# How To: Tools Handle Validates Deferred Counts And Never Hides Mandatory Tools

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: workflow, integration

## Overview

Workflow: test tools handle validates deferred counts and never hides mandatory tools

## Prerequisites

**Required Modules:**
- `__future__`
- `json`
- `urllib.error`
- `unittest.mock`
- `pytest`
- `caveman_cloud`


## Step-by-Step Guide

### Step 1: Assign cave = Cave(...)

```Python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
```

### Step 2: Assign always = CaveTool(...)

```Python
always = CaveTool(name='always', description='mandatory', input_schema={}, read_only=True, idempotent=True, always_load=True)
```

### Step 3: Assign lazy_one = CaveTool(...)

```Python
lazy_one = CaveTool(name='lazy1', description='lazy', input_schema={}, read_only=True, idempotent=True)
```

### Step 4: Assign lazy_two = CaveTool(...)

```Python
lazy_two = CaveTool(name='lazy2', description='lazy', input_schema={}, read_only=True, idempotent=True)
```

### Step 5: Assign handle = cave.tools(...)

```Python
handle = cave.tools([always, lazy_one, lazy_two], strategy='deferred', initial_tool_count=8, max_loaded_tools=2)
```

**Verification:**
```Python
assert [tool.name for tool in handle.initial] == ['always', 'lazy1']
```

### Step 6: Call cave.tools()

```Python
cave.tools([always], strategy='unknown')
```

### Step 7: Call cave.tools()

```Python
cave.tools([always], initial_tool_count=-1)
```

### Step 8: Call cave.tool_search()

```Python
cave.tool_search([always], 'query', max_tools=0)
```

### Step 9: Assign always_two = CaveTool(...)

```Python
always_two = CaveTool(name='always2', description='mandatory', input_schema={}, read_only=True, idempotent=True, always_load=True)
```

### Step 10: Call cave.tools()

```Python
cave.tools([always, always_two], strategy='deferred', max_loaded_tools=1)
```


## Complete Example

```Python
# Workflow
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
always = CaveTool(name='always', description='mandatory', input_schema={}, read_only=True, idempotent=True, always_load=True)
lazy_one = CaveTool(name='lazy1', description='lazy', input_schema={}, read_only=True, idempotent=True)
lazy_two = CaveTool(name='lazy2', description='lazy', input_schema={}, read_only=True, idempotent=True)
handle = cave.tools([always, lazy_one, lazy_two], strategy='deferred', initial_tool_count=8, max_loaded_tools=2)
assert [tool.name for tool in handle.initial] == ['always', 'lazy1']
with pytest.raises(ValueError, match='strategy'):
    cave.tools([always], strategy='unknown')
with pytest.raises(ValueError, match='non-negative integer'):
    cave.tools([always], initial_tool_count=-1)
with pytest.raises(ValueError, match='positive integer'):
    cave.tool_search([always], 'query', max_tools=0)
always_two = CaveTool(name='always2', description='mandatory', input_schema={}, read_only=True, idempotent=True, always_load=True)
with pytest.raises(ValueError, match='always_load tool count'):
    cave.tools([always, always_two], strategy='deferred', max_loaded_tools=1)
```

## Next Steps


---

*Source: test_sdk.py:215 | Complexity: Advanced | Last updated: 2026-08-11*