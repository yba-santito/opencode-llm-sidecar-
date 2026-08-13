# How To: Tools Handle Applies Default Cap And Allows Override

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test tools handle applies default cap and allows override

## Prerequisites

**Required Modules:**
- `__future__`
- `json`
- `urllib.error`
- `unittest.mock`
- `pytest`
- `caveman_cloud`


## Step-by-Step Guide

### Step 1: Assign mock_response = value

```Python
mock_response = {'tools': [], 'sent_schema_tokens': 0, 'full_schema_tokens': 10, 'deferred_count': 1, 'method': 'bm25'}
```

### Step 2: Assign tool = CaveTool(...)

```Python
tool = CaveTool(name='safe', description='safe', input_schema={}, read_only=True, idempotent=True)
```

### Step 3: Assign cave = Cave(...)

```Python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
```

### Step 4: Assign handle = cave.tools(...)

```Python
handle = cave.tools([tool], strategy='deferred', max_loaded_tools=2)
```

### Step 5: Call handle.search()

```Python
handle.search('first')
```

### Step 6: Call handle.search()

```Python
handle.search('second', max_tools=1)
```

### Step 7: Call cave.tools()

```Python
cave.tools([tool], max_loaded_tools=0)
```

**Verification:**
```Python
assert bodies[0]['max_tools'] == 2
```


## Complete Example

```Python
# Workflow
mock_response = {'tools': [], 'sent_schema_tokens': 0, 'full_schema_tokens': 10, 'deferred_count': 1, 'method': 'bm25'}
bodies: list[dict] = []

def fake_urlopen(req, timeout):
    bodies.append(json.loads(req.data))
    return _fake_urlopen(mock_response)
tool = CaveTool(name='safe', description='safe', input_schema={}, read_only=True, idempotent=True)
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
    handle = cave.tools([tool], strategy='deferred', max_loaded_tools=2)
    handle.search('first')
    handle.search('second', max_tools=1)
    with pytest.raises(ValueError, match='positive integer'):
        cave.tools([tool], max_loaded_tools=0)
assert bodies[0]['max_tools'] == 2
assert bodies[1]['max_tools'] == 1
assert bodies[0]['tools'][0]['idempotent'] is True
```

## Next Steps


---

*Source: test_sdk.py:193 | Complexity: Intermediate | Last updated: 2026-08-11*