# How To: Tofu Pins The Embedded Key And Refuses A Later Unsigned Bundle

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: test tofu pins the embedded key and refuses a later unsigned bundle

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

### Step 1: Assign client = _make_cave.runtime_policy(...)

```Python
client = _make_cave().runtime_policy()
```

**Verification:**
```Python
assert _refresh_with(client, _signed_payload()).signed is True
```

### Step 2: Assign later_unsigned = json.loads(...)

```Python
later_unsigned = json.loads(KILL_BUNDLE)
```

### Step 3: Assign unknown = 99

```Python
later_unsigned['sequence'] = 99
```

### Step 4: Assign result = _refresh_with(...)

```Python
result = _refresh_with(client, {'bundle': json.dumps(later_unsigned), 'signature': None, 'public_key': None})
```

**Verification:**
```Python
assert result.ok is False
```


## Complete Example

```Python
# Workflow
client = _make_cave().runtime_policy()
assert _refresh_with(client, _signed_payload()).signed is True
later_unsigned = json.loads(KILL_BUNDLE)
later_unsigned['sequence'] = 99
result = _refresh_with(client, {'bundle': json.dumps(later_unsigned), 'signature': None, 'public_key': None})
assert result.ok is False
assert result.error == 'unsigned_rejected'
assert client.state().kill is False
```

## Next Steps


---

*Source: test_runtime_policy.py:257 | Complexity: Intermediate | Last updated: 2026-08-11*