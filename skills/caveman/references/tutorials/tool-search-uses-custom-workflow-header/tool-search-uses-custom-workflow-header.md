# How To: Tool Search Uses Custom Workflow Header

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: tool_search sends the workflow in the x-cave-workflow header.

## Prerequisites

**Required Modules:**
- `__future__`
- `json`
- `urllib.error`
- `unittest.mock`
- `pytest`
- `caveman_cloud`


## Step-by-Step Guide

### Step 1: 'tool_search sends the workflow in the x-cave-workflow header.'

```Python
'tool_search sends the workflow in the x-cave-workflow header.'
```

### Step 2: Assign mock_response = value

```Python
mock_response = {'tools': [], 'sent_schema_tokens': 50, 'full_schema_tokens': 200, 'deferred_count': 2, 'method': 'lexical-hit-rate'}
```

### Step 3: Assign cave = Cave(...)

```Python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a', default_workflow='my-workflow')
```

### Step 4: Call cave.tool_search()

```Python
cave.tool_search([], query='test', workflow='custom-workflow')
```

**Verification:**
```Python
assert captured_headers[0]['X-cave-workflow'] == 'custom-workflow'
```


## Complete Example

```Python
# Workflow
'tool_search sends the workflow in the x-cave-workflow header.'
mock_response = {'tools': [], 'sent_schema_tokens': 50, 'full_schema_tokens': 200, 'deferred_count': 2, 'method': 'lexical-hit-rate'}
captured_headers: list[dict] = []

def fake_urlopen(req, timeout):
    captured_headers.append(dict(req.headers))
    return _fake_urlopen(mock_response)
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a', default_workflow='my-workflow')
    cave.tool_search([], query='test', workflow='custom-workflow')
assert captured_headers[0]['X-cave-workflow'] == 'custom-workflow'
```

## Next Steps


---

*Source: test_sdk.py:233 | Complexity: Intermediate | Last updated: 2026-08-11*