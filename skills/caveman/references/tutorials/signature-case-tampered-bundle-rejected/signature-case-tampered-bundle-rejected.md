# How To: Signature Case Tampered Bundle Rejected

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: test signature case tampered bundle rejected

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

### Step 1: Assign case = _signature_case(...)

```Python
case = _signature_case('tampered_bundle_rejected')
```

### Step 2: Assign client = _make_cave.runtime_policy(...)

```Python
client = _make_cave().runtime_policy(public_key=case['pinned_public_key'])
```

### Step 3: Assign result = _refresh_with(...)

```Python
result = _refresh_with(client, _signed_payload(TAMPERED_BUNDLE))
```

**Verification:**
```Python
assert result.ok is False
```

### Step 4: Assign decision = client.decide(...)

```Python
decision = client.decide('fix_failing_test_with_stacktrace', 'task-a', {})
```

**Verification:**
```Python
assert (decision.decision, decision.reason) == ('baseline', 'policy_unavailable')
```


## Complete Example

```Python
# Workflow
case = _signature_case('tampered_bundle_rejected')
client = _make_cave().runtime_policy(public_key=case['pinned_public_key'])
result = _refresh_with(client, _signed_payload(TAMPERED_BUNDLE))
assert result.ok is False
assert result.error == 'signature_invalid'
assert client.state().has_bundle is False
decision = client.decide('fix_failing_test_with_stacktrace', 'task-a', {})
assert (decision.decision, decision.reason) == ('baseline', 'policy_unavailable')
```

## Next Steps


---

*Source: test_runtime_policy.py:182 | Complexity: Intermediate | Last updated: 2026-08-11*