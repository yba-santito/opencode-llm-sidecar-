# How To: Tool Search Minimal Args

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: tool_search works without optional context and max_tools.

## Prerequisites

**Required Modules:**
- `__future__`
- `json`
- `urllib.error`
- `unittest.mock`
- `pytest`
- `caveman_cloud`


## Step-by-Step Guide

### Step 1: 'tool_search works without optional context and max_tools.'

```Python
'tool_search works without optional context and max_tools.'
```

### Step 2: Assign mock_response = value

```Python
mock_response = {'tools': [], 'sent_schema_tokens': 0, 'full_schema_tokens': 100, 'deferred_count': 3, 'method': 'lexical-hit-rate'}
```

### Step 3: Assign cave = Cave(...)

```Python
cave = Cave(api_key='cave_live_test_key', base_url='http://localhost:8787', agent='test-agent')
```

### Step 4: Assign result = cave.tool_search(...)

```Python
result = cave.tool_search([], query='anything')
```

### Step 5: Assign body = value

```Python
body = captured_bodies[0]
```

**Verification:**
```Python
assert 'context' not in body
```


## Complete Example

```Python
# Workflow
'tool_search works without optional context and max_tools.'
mock_response = {'tools': [], 'sent_schema_tokens': 0, 'full_schema_tokens': 100, 'deferred_count': 3, 'method': 'lexical-hit-rate'}
captured_bodies: list[dict] = []

def fake_urlopen(req, timeout):
    captured_bodies.append(json.loads(req.data))
    return _fake_urlopen(mock_response)
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    cave = Cave(api_key='cave_live_test_key', base_url='http://localhost:8787', agent='test-agent')
    result = cave.tool_search([], query='anything')
body = captured_bodies[0]
assert 'context' not in body
assert 'max_tools' not in body
assert 'session_id' not in body
assert result.reduction_pct == 100.0
```

## Next Steps


---

*Source: test_sdk.py:172 | Complexity: Intermediate | Last updated: 2026-08-11*