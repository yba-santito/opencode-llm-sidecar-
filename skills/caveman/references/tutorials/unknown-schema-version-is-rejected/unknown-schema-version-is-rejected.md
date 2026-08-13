# How To: Unknown Schema Version Is Rejected

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: test unknown schema version is rejected

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

### Step 1: Assign client = _client_holding(...)

```Python
client = _client_holding(BUNDLE)
```

### Step 2: Assign future = json.loads(...)

```Python
future = json.loads(BUNDLE)
```

### Step 3: Assign unknown = 'caveman.runtime-policy.v2'

```Python
future['schema_version'] = 'caveman.runtime-policy.v2'
```

### Step 4: Assign unknown = 99

```Python
future['sequence'] = 99
```

### Step 5: Assign result = _refresh_with(...)

```Python
result = _refresh_with(client, {'bundle': json.dumps(future)})
```

**Verification:**
```Python
assert result.ok is False
```


## Complete Example

```Python
# Workflow
client = _client_holding(BUNDLE)
future = json.loads(BUNDLE)
future['schema_version'] = 'caveman.runtime-policy.v2'
future['sequence'] = 99
result = _refresh_with(client, {'bundle': json.dumps(future)})
assert result.ok is False
assert result.error == 'unknown_schema_version'
assert client.state().sequence == 42
```

## Next Steps


---

*Source: test_runtime_policy.py:499 | Complexity: Intermediate | Last updated: 2026-08-11*