# How To: Fallback Workflow May Be The Customer Baseline

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test fallback workflow may be the customer baseline

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

### Step 1: Assign policy = value

```Python
policy = {'id': 'p', 'task_family': 'f', 'applies_when': [{'field': 'x', 'op': 'eq', 'value': 1}], 'execute': {'workflow': 'w'}}
```

### Step 2: Assign decision = _client_holding.decide(...)

```Python
decision = _client_holding(_bundle_with_policies([policy])).decide('f', 'u', {'x': 2})
```

**Verification:**
```Python
assert (decision.decision, decision.reason, decision.workflow) == ('fallback', 'guards_failed', None)
```


## Complete Example

```Python
# Workflow
policy = {'id': 'p', 'task_family': 'f', 'applies_when': [{'field': 'x', 'op': 'eq', 'value': 1}], 'execute': {'workflow': 'w'}}
decision = _client_holding(_bundle_with_policies([policy])).decide('f', 'u', {'x': 2})
assert (decision.decision, decision.reason, decision.workflow) == ('fallback', 'guards_failed', None)
```

## Next Steps


---

*Source: test_runtime_policy.py:832 | Complexity: Beginner | Last updated: 2026-08-11*