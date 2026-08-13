# How To: Bundle Counters Accept Integer Valued Json Numbers Only

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: JSON has one number type: a publisher may emit 7 or 7.0 for the same
counter and the TypeScript mirror accepts both. Booleans and values beyond
JavaScript's safe integer range reject the bundle.

## Prerequisites

**Required Modules:**
- `__future__`
- `base64`
- `hashlib`
- `json`
- `os`
- `threading`
- `urllib.request`
- `pathlib`
- `typing`
- `unittest.mock`
- `pytest`
- `caveman_cloud`
- `caveman_cloud.core`


## Step-by-Step Guide

### Step 1: "JSON has one number type: a publisher may emit 7 or 7.0 for the same\n    counter and the TypeScript mirror accepts both. Booleans and values beyond\n    JavaScript's safe integer range reject the bundle."

```Python
"JSON has one number type: a publisher may emit 7 or 7.0 for the same\n    counter and the TypeScript mirror accepts both. Booleans and values beyond\n    JavaScript's safe integer range reject the bundle."
```

### Step 2: Assign bundle = _bundle_with_policies(...)

```Python
bundle = _bundle_with_policies([], policy_version=7.0, sequence=42.0)
```

### Step 3: Assign state = _client_holding.state(...)

```Python
state = _client_holding(bundle).state()
```

**Verification:**
```Python
assert state.policy_version == 7.0
```

### Step 4: Assign client = _make_cave.runtime_policy(...)

```Python
client = _make_cave().runtime_policy()
```

### Step 5: Assign rejected = _refresh_with(...)

```Python
rejected = _refresh_with(client, {'bundle': _bundle_with_policies([], policy_version=True, sequence=10 ** 400)})
```

**Verification:**
```Python
assert (rejected.ok, rejected.error) == (False, 'invalid_bundle_counter')
```


## Complete Example

```Python
# Workflow
"JSON has one number type: a publisher may emit 7 or 7.0 for the same\n    counter and the TypeScript mirror accepts both. Booleans and values beyond\n    JavaScript's safe integer range reject the bundle."
bundle = _bundle_with_policies([], policy_version=7.0, sequence=42.0)
state = _client_holding(bundle).state()
assert state.policy_version == 7.0
assert state.sequence == 42.0
client = _make_cave().runtime_policy()
rejected = _refresh_with(client, {'bundle': _bundle_with_policies([], policy_version=True, sequence=10 ** 400)})
assert (rejected.ok, rejected.error) == (False, 'invalid_bundle_counter')
assert client.state().has_bundle is False
```

## Next Steps


---

*Source: test_runtime_policy.py:796 | Complexity: Intermediate | Last updated: 2026-08-11*