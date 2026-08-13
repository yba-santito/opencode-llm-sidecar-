# How To: Sequence Regression Is Rejected

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: test sequence regression is rejected

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

### Step 2: Assign stale = json.loads(...)

```Python
stale = json.loads(BUNDLE)
```

### Step 3: Assign unknown = 41

```Python
stale['sequence'] = 41
```

### Step 4: Assign unknown = 6

```Python
stale['policy_version'] = 6
```

### Step 5: Assign result = _refresh_with(...)

```Python
result = _refresh_with(client, {'bundle': json.dumps(stale)})
```

**Verification:**
```Python
assert result.ok is False
```


## Complete Example

```Python
# Workflow
client = _client_holding(BUNDLE)
stale = json.loads(BUNDLE)
stale['sequence'] = 41
stale['policy_version'] = 6
result = _refresh_with(client, {'bundle': json.dumps(stale)})
assert result.ok is False
assert result.error == 'stale_sequence'
assert client.state().sequence == 42
assert client.state().policy_version == 7
```

## Next Steps


---

*Source: test_runtime_policy.py:463 | Complexity: Intermediate | Last updated: 2026-08-11*