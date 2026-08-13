# How To: Tofu Pins As Soon As A Signature Verifies Even If The Bundle Is Rejected

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: The pin is stored the moment the signature verifies — BEFORE the schema
and sequence checks. A validly signed bundle this client refuses on its
contents has still proven which key the server signs with, so it must not
leave the client downgradeable to unsigned.

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

### Step 1: 'The pin is stored the moment the signature verifies — BEFORE the schema\n    and sequence checks. A validly signed bundle this client refuses on its\n    contents has still proven which key the server signs with, so it must not\n    leave the client downgradeable to unsigned.'

```Python
'The pin is stored the moment the signature verifies — BEFORE the schema\n    and sequence checks. A validly signed bundle this client refuses on its\n    contents has still proven which key the server signs with, so it must not\n    leave the client downgradeable to unsigned.'
```

### Step 2: Assign client = _make_cave.runtime_policy(...)

```Python
client = _make_cave().runtime_policy()
```

### Step 3: Assign future = json.loads(...)

```Python
future = json.loads(BUNDLE)
```

### Step 4: Assign unknown = 'caveman.runtime-policy.v2'

```Python
future['schema_version'] = 'caveman.runtime-policy.v2'
```

### Step 5: Assign rejected = _refresh_with(...)

```Python
rejected = _refresh_with(client, _sign_bundle(json.dumps(future)))
```

**Verification:**
```Python
assert (rejected.ok, rejected.error) == (False, 'unknown_schema_version')
```

### Step 6: Assign unsigned = _refresh_with(...)

```Python
unsigned = _refresh_with(client, _unsigned_payload())
```

**Verification:**
```Python
assert (unsigned.ok, unsigned.error) == (False, 'unsigned_rejected')
```


## Complete Example

```Python
# Workflow
'The pin is stored the moment the signature verifies — BEFORE the schema\n    and sequence checks. A validly signed bundle this client refuses on its\n    contents has still proven which key the server signs with, so it must not\n    leave the client downgradeable to unsigned.'
client = _make_cave().runtime_policy()
future = json.loads(BUNDLE)
future['schema_version'] = 'caveman.runtime-policy.v2'
rejected = _refresh_with(client, _sign_bundle(json.dumps(future)))
assert (rejected.ok, rejected.error) == (False, 'unknown_schema_version')
assert client.state().has_bundle is False
unsigned = _refresh_with(client, _unsigned_payload())
assert (unsigned.ok, unsigned.error) == (False, 'unsigned_rejected')
assert client.state().has_bundle is False
assert _refresh_with(client, _signed_payload()).ok is True
assert client.state().signed is True
```

## Next Steps


---

*Source: test_runtime_policy.py:269 | Complexity: Intermediate | Last updated: 2026-08-11*