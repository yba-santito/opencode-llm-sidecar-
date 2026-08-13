# How To: Sequence Increment Is Thread Safe

**Difficulty**: Intermediate
**Estimated Time**: 5 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test sequence increment is thread safe

## Prerequisites

**Required Modules:**
- `__future__`
- `asyncio`
- `json`
- `concurrent.futures`
- `typing`
- `unittest.mock`
- `pytest`
- `caveman_cloud`


## Step-by-Step Guide

### Step 1: Assign unknown = _capture(...)

```Python
captured, fake_urlopen = _capture()
```

### Step 2: Assign results = list(...)

```Python
results = list(executor.map(lambda index: trace.tool(f'tool-{index}', {}, lambda: index), range(64)))
```

**Verification:**
```Python
assert results == list(range(64))
```


## Complete Example

```Python
# Workflow
captured, fake_urlopen = _capture()
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    with _cave().trace(trace_id=TRACE_ID, span_id=SPAN_ID) as trace:
        with ThreadPoolExecutor(max_workers=8) as executor:
            results = list(executor.map(lambda index: trace.tool(f'tool-{index}', {}, lambda: index), range(64)))
assert results == list(range(64))
assert sorted((request['body']['sequence'] for request in captured)) == list(range(1, 65))
```

## Next Steps


---

*Source: test_tool_events.py:190 | Complexity: Intermediate | Last updated: 2026-08-11*