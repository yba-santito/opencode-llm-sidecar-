# How To: Weighted Arm Propensity Uses The Fixtures Float Association

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: Propensity is ``(1 - holdout) * (weight / total)`` in EXACTLY that
association. ``((1 - holdout) * weight) / total`` is a different float
expression; the fixture's weighted ``exp-w`` vectors exist to catch it.

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

### Step 1: "Propensity is ``(1 - holdout) * (weight / total)`` in EXACTLY that\n    association. ``((1 - holdout) * weight) / total`` is a different float\n    expression; the fixture's weighted ``exp-w`` vectors exist to catch it."

```Python
"Propensity is ``(1 - holdout) * (weight / total)`` in EXACTLY that\n    association. ``((1 - holdout) * weight) / total`` is a different float\n    expression; the fixture's weighted ``exp-w`` vectors exist to catch it."
```

### Step 2: Assign weighted = value

```Python
weighted = [v for v in FIXTURES['assignment_vectors'] if v['keys'][1] == 'exp-w']
```

**Verification:**
```Python
assert len(weighted) >= 3
```

### Step 3: Assign diverged = 0

```Python
diverged = 0
```

**Verification:**
```Python
assert vector['expected_propensity'] == vector['holdout_frac']
```

### Step 4: Assign total = sum(...)

```Python
total = sum((arm['fraction'] for arm in vector['arms']))
```

### Step 5: Assign weight = next(...)

```Python
weight = next((arm['fraction'] for arm in vector['arms'] if arm['name'] == vector['expected_arm']))
```

### Step 6: Assign holdout = value

```Python
holdout = vector['holdout_frac']
```

**Verification:**
```Python
assert (1 - holdout) * (weight / total) == vector['expected_propensity']
```


## Complete Example

```Python
# Workflow
"Propensity is ``(1 - holdout) * (weight / total)`` in EXACTLY that\n    association. ``((1 - holdout) * weight) / total`` is a different float\n    expression; the fixture's weighted ``exp-w`` vectors exist to catch it."
weighted = [v for v in FIXTURES['assignment_vectors'] if v['keys'][1] == 'exp-w']
assert len(weighted) >= 3
diverged = 0
for vector in weighted:
    if vector['expected_arm'] == 'holdout':
        assert vector['expected_propensity'] == vector['holdout_frac']
        continue
    total = sum((arm['fraction'] for arm in vector['arms']))
    weight = next((arm['fraction'] for arm in vector['arms'] if arm['name'] == vector['expected_arm']))
    holdout = vector['holdout_frac']
    assert (1 - holdout) * (weight / total) == vector['expected_propensity']
    if (1 - holdout) * weight / total != vector['expected_propensity']:
        diverged += 1
assert diverged >= 1
```

## Next Steps


---

*Source: test_runtime_policy.py:360 | Complexity: Intermediate | Last updated: 2026-08-11*