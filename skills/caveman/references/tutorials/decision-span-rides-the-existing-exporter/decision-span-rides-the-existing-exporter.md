# How To: Decision Span Rides The Existing Exporter

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: workflow, integration

## Overview

Workflow: test decision span rides the existing exporter

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

### Step 1: Assign cave = _make_cave(...)

```Python
cave = _make_cave()
```

### Step 2: Assign client = _make_cave.runtime_policy(...)

```Python
client = _make_cave().runtime_policy(public_key=PINNED_KEY)
```

**Verification:**
```Python
assert _refresh_with(client, _signed_payload()).ok is True
```

### Step 3: Assign exporter = cave.exporter(...)

```Python
exporter = cave.exporter()
```

### Step 4: Call client.decide()

```Python
client.decide('fix_failing_test_with_stacktrace', 'task-a', {'stack_trace_location_confidence': 0.95, 'language': 'typescript'}, exporter)
```

**Verification:**
```Python
assert exporter.pending == 1
```

### Step 5: Assign payload = exporter.build_payload(...)

```Python
payload = exporter.build_payload()
```

### Step 6: Assign span = value

```Python
span = payload['resourceSpans'][0]['scopeSpans'][0]['spans'][0]
```

**Verification:**
```Python
assert span['name'] == 'caveman.policy.decision'
```

### Step 7: Assign attrs = _span_attributes(...)

```Python
attrs = _span_attributes(payload)
```

**Verification:**
```Python
assert attrs['cave.policy.id'] == 'targeted_test_repair_v3'
```


## Complete Example

```Python
# Workflow
cave = _make_cave()
client = _make_cave().runtime_policy(public_key=PINNED_KEY)
assert _refresh_with(client, _signed_payload()).ok is True
exporter = cave.exporter()
client.decide('fix_failing_test_with_stacktrace', 'task-a', {'stack_trace_location_confidence': 0.95, 'language': 'typescript'}, exporter)
assert exporter.pending == 1
payload = exporter.build_payload()
span = payload['resourceSpans'][0]['scopeSpans'][0]['spans'][0]
assert span['name'] == 'caveman.policy.decision'
assert span['kind'] == 1
attrs = _span_attributes(payload)
assert attrs['cave.policy.id'] == 'targeted_test_repair_v3'
assert attrs['cave.policy.version'] == '7'
assert attrs['cave.policy.decision'] == 'execute'
assert attrs['cave.policy.reason'] == 'applied'
assert attrs['cave.policy.signed'] is True
assert attrs['cave.experiment.id'] == 'exp-1'
assert attrs['cave.experiment.arm'] == 'candidate'
assert attrs['cave.experiment.propensity'] == 0.9
assert not any(('saving' in key or 'usd' in key or 'verified' in key for key in attrs))
```

## Next Steps


---

*Source: test_runtime_policy.py:935 | Complexity: Intermediate | Last updated: 2026-08-11*