# How To: Assignment Vector Arm And Propensity

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: pytest, workflow, integration

## Overview

Workflow: test assignment vector arm and propensity

## Prerequisites

- [ ] Setup code must be executed first

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

**Setup Required:**
```Python
# Fixtures: vector
```

## Step-by-Step Guide

### Step 1: Assign unknown = value

```Python
project_id, experiment_id, unit_key = vector['keys']
```

### Step 2: Assign bundle = value

```Python
bundle = {'schema_version': 'caveman.runtime-policy.v1', 'project_id': project_id, 'policy_version': 1, 'sequence': 1, 'issued_at': '2026-08-08T12:00:00Z', 'refresh_seconds': 60, 'kill': False, 'runtime_policies': [{'id': 'vector_policy', 'task_family': 'vector_family', 'execute': {'workflow': 'vector_execute'}, 'fallback': {'workflow': 'vector_fallback'}, 'experiment': {'id': experiment_id, 'holdout_frac': vector['holdout_frac'], 'arms': vector['arms']}}], 'experiments': []}
```

### Step 3: Assign client = _make_cave.runtime_policy(...)

```Python
client = _make_cave().runtime_policy()
```

**Verification:**
```Python
assert _refresh_with(client, {'bundle': json.dumps(bundle)}).ok is True
```

### Step 4: Assign decision = client.decide(...)

```Python
decision = client.decide('vector_family', unit_key)
```

**Verification:**
```Python
assert decision.reason == 'no_unit_key'
```


## Complete Example

```Python
# Setup
# Fixtures: vector

# Workflow
project_id, experiment_id, unit_key = vector['keys']
bundle = {'schema_version': 'caveman.runtime-policy.v1', 'project_id': project_id, 'policy_version': 1, 'sequence': 1, 'issued_at': '2026-08-08T12:00:00Z', 'refresh_seconds': 60, 'kill': False, 'runtime_policies': [{'id': 'vector_policy', 'task_family': 'vector_family', 'execute': {'workflow': 'vector_execute'}, 'fallback': {'workflow': 'vector_fallback'}, 'experiment': {'id': experiment_id, 'holdout_frac': vector['holdout_frac'], 'arms': vector['arms']}}], 'experiments': []}
client = _make_cave().runtime_policy()
assert _refresh_with(client, {'bundle': json.dumps(bundle)}).ok is True
decision = client.decide('vector_family', unit_key)
if unit_key == '':
    assert decision.reason == 'no_unit_key'
    assert decision.arm is None
    return
assert decision.arm == vector['expected_arm']
assert decision.propensity == vector['expected_propensity']
if vector['expected_arm'] == 'holdout':
    assert decision.decision == 'fallback'
    assert decision.workflow == 'vector_fallback'
else:
    assert decision.decision == 'execute'
    assert decision.workflow == 'vector_execute'
```

## Next Steps


---

*Source: test_runtime_policy.py:314 | Complexity: Intermediate | Last updated: 2026-08-11*