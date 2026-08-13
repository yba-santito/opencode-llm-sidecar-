# How To: Each Trace Owns Independent Sequence

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test each trace owns independent sequence

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

### Step 2: Assign cave = _cave(...)

```Python
cave = _cave()
```

### Step 3: Call first.tool()

```Python
first.tool('one', {}, lambda: 1)
```

### Step 4: Call second.tool()

```Python
second.tool('two', {}, lambda: 2)
```

**Verification:**
```Python
assert [request['body']['sequence'] for request in captured] == [1, 1]
```


## Complete Example

```Python
# Workflow
captured, fake_urlopen = _capture()
cave = _cave()
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    with cave.trace(trace_id=TRACE_ID, span_id=SPAN_ID) as first:
        first.tool('one', {}, lambda: 1)
    with cave.trace(trace_id=TRACE_ID, span_id=SPAN_ID) as second:
        second.tool('two', {}, lambda: 2)
assert [request['body']['sequence'] for request in captured] == [1, 1]
```

## Next Steps


---

*Source: test_tool_events.py:179 | Complexity: Intermediate | Last updated: 2026-08-11*