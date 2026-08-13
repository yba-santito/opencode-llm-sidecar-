# How To: Custom Service Name

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: test custom service name

## Prerequisites

**Required Modules:**
- `__future__`
- `json`
- `threading`
- `typing`
- `unittest.mock`
- `caveman_cloud`


## Step-by-Step Guide

### Step 1: Assign cave = Cave(...)

```Python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
```

### Step 2: Assign exp = cave.exporter(...)

```Python
exp = cave.exporter(service_name='custom-svc')
```

### Step 3: Call exp.record_span()

```Python
exp.record_span('op')
```

### Step 4: Assign payload = exp.build_payload(...)

```Python
payload = exp.build_payload()
```

### Step 5: Assign res_attrs = _attr_map(...)

```Python
res_attrs = _attr_map(payload['resourceSpans'][0]['resource']['attributes'])
```

**Verification:**
```Python
assert res_attrs['service.name'] == 'custom-svc'
```


## Complete Example

```Python
# Workflow
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
exp = cave.exporter(service_name='custom-svc')
exp.record_span('op')
payload = exp.build_payload()
res_attrs = _attr_map(payload['resourceSpans'][0]['resource']['attributes'])
assert res_attrs['service.name'] == 'custom-svc'
```

## Next Steps


---

*Source: test_exporter.py:275 | Complexity: Intermediate | Last updated: 2026-08-11*