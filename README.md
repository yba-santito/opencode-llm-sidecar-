# opencode-llm-sidecar

Docker image that runs a headless **opencode** server (`opencode serve`) as a
standalone LLM runtime. The app (e.g. the Joburg Water Reserve Review Gate)
sends prompts over HTTP; this container holds the model credentials and does
the actual model calls — so the app never ships an API key.

## What's inside

- **opencode 1.18.18** (`node:22-slim` base)
- A minimal, read-only `opencode.json` (no MCP servers, no plugins, write
  permissions denied)
- All personal skills baked in: `banner-design`, `brand`, `caveman`, `design`,
  `design-system`, `last30days`, `skill-builder`, `slides`, `stop-slop`,
  `ui-styling`, `ui-ux-pro-max`
- Default model `opencode/deepseek-v4-flash-free` (free); other `-free`
  models are pre-registered for one-line switching

## Quick start

```bash
# 1. Configure credentials
cp .env.example .env   # set OPENCODE_SERVER_PASSWORD + at least one provider key

# 2. Build and run
docker compose up -d --build

# 3. Health check
curl -u opencode:"$OPENCODE_SERVER_PASSWORD" http://localhost:4096/global/health
```

The server listens on `:4096` and requires HTTP basic auth
(username `opencode`, password = `OPENCODE_SERVER_PASSWORD`).

## Credentials

Free models still require authentication. The entrypoint seeds opencode's
`auth.json` from environment variables at container start:

| Env var | opencode provider |
|---|---|
| `ZEN_API_KEY` | `opencode` (Zen free/paid models) |
| `NVIDIA_API_KEY` | `nvidia` (Nemotron free endpoints) |
| `GOOGLE_API_KEY` | `google` |
| `OPENROUTER_API_KEY` | `openrouter` |

Nothing is baked into the image; add whichever keys your target host needs.

## Switching models

Edit `opencode.json` → change `"model"` to another registered free model, e.g.
`opencode/hy3-free`, `opencode/mimo-v2.5-free`, or `opencode/nemotron-3-ultra-free`.
Rebuild the image (or mount an override config) to apply.

## Pointing an app at it

```
LLM_TRANSPORT=opencode
OPENCODE_SERVER_URL=http://<sidecar-host>:4096
OPENCODE_SERVER_USERNAME=opencode
OPENCODE_SERVER_PASSWORD=<same password>
```

## Deploying

Run the same image on any host (this one, or a future side project):

```bash
docker run -d \
  --name opencode-llm-sidecar \
  -p 4096:4096 \
  --env-file .env \
  -v opencode-data:/root/.local/share/opencode \
  <image-name>:latest
```
