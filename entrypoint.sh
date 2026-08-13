#!/usr/bin/env sh
set -eu

AUTH_FILE="${OPENCODE_AUTH_FILE:-/root/.local/share/opencode/auth.json}"

mkdir -p "$(dirname "$AUTH_FILE")"

# If no provider keys were supplied and an auth file already exists (e.g. it was
# mounted read-only), skip seeding entirely so we don't fail on a read-only fs.
if [ -z "${ZEN_API_KEY:-}" ] && [ -z "${NVIDIA_API_KEY:-}" ] && \
   [ -z "${GOOGLE_API_KEY:-}" ] && [ -z "${OPENROUTER_API_KEY:-}" ] && \
   [ -s "$AUTH_FILE" ]; then
    echo "No provider env vars set; using existing auth file."
    exec opencode serve --hostname 0.0.0.0 --port "${PORT:-4096}"
fi

# Read the existing auth.json, overlay any provider keys from env, and write it
# back. The format opencode expects is {"<provider>": {"key": ..., "type": "api"}}.
node - "$AUTH_FILE" <<'EOF'
const fs = require("fs");
const path = require("path");

const authFile = process.argv[2];
let data = {};

if (fs.existsSync(authFile) && fs.statSync(authFile).size > 0) {
  try {
    data = JSON.parse(fs.readFileSync(authFile, "utf8"));
  } catch {
    data = {};
  }
}

// Map of env var -> opencode provider id.
const envMap = {
  ZEN_API_KEY: "opencode",
  NVIDIA_API_KEY: "nvidia",
  GOOGLE_API_KEY: "google",
  OPENROUTER_API_KEY: "openrouter",
};

for (const [varName, provider] of Object.entries(envMap)) {
  const key = (process.env[varName] || "").trim();
  if (key) {
    data[provider] = { key, type: "api" };
    console.log(`Seeded ${provider} from ${varName}`);
  } else {
    console.log(`SKIP ${provider}: ${varName} not set`);
  }
}

fs.mkdirSync(path.dirname(authFile), { recursive: true });
fs.writeFileSync(authFile, JSON.stringify(data, null, 2));
EOF

if [ ! -s "$AUTH_FILE" ]; then
    echo "WARNING: no credentials seeded (set ZEN_API_KEY, NVIDIA_API_KEY and/or GOOGLE_API_KEY)."
fi

exec opencode serve --hostname 0.0.0.0 --port "${PORT:-4096}"