# How To: Synchronous And Asynchronous Failures Emit Error Without Exception Leakage

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test synchronous and asynchronous failures emit error without exception leakage

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

### Step 2: Assign sync_error = RuntimeError(...)

```Python
sync_error = RuntimeError('private-sync-exception-message')
```

### Step 3: Call trace.tool()

```Python
trace.tool('sync-danger', {}, sync_failure)
```

**Verification:**
```Python
assert raised.value is sync_error
```

### Step 4: Call _assert_event()

```Python
_assert_event(captured[0], name='sync-danger', outcome='error', sequence=1)
```

**Verification:**
```Python
assert sync_error.args[0] not in json.dumps(captured[0]['body'])
```

### Step 5: Assign unknown = _capture(...)

```Python
captured, fake_urlopen = _capture()
```

### Step 6: Assign async_error = RuntimeError(...)

```Python
async_error = RuntimeError('private-async-exception-message')
```

### Step 7: Call asyncio.run()

```Python
asyncio.run(run_async_failure())
```

**Verification:**
```Python
assert raised.value is async_error
```

### Step 8: Call _assert_event()

```Python
_assert_event(captured[0], name='async-danger', outcome='error', sequence=1)
```

### Step 9: Assign wire = json.dumps(...)

```Python
wire = json.dumps(captured[0]['body'])
```

**Verification:**
```Python
assert async_error.args[0] not in wire
```


## Complete Example

```Python
# Workflow
captured, fake_urlopen = _capture()
sync_error = RuntimeError('private-sync-exception-message')

def sync_failure() -> Any:
    raise sync_error
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    with _cave().trace(trace_id=TRACE_ID, span_id=SPAN_ID) as trace:
        with pytest.raises(RuntimeError) as raised:
            trace.tool('sync-danger', {}, sync_failure)
assert raised.value is sync_error
_assert_event(captured[0], name='sync-danger', outcome='error', sequence=1)
assert sync_error.args[0] not in json.dumps(captured[0]['body'])
captured, fake_urlopen = _capture()
async_error = RuntimeError('private-async-exception-message')

async def async_failure() -> Any:
    raise async_error

async def run_async_failure() -> None:
    with patch('urllib.request.urlopen', side_effect=fake_urlopen):
        with _cave().trace(trace_id=TRACE_ID, span_id=SPAN_ID) as trace:
            await trace.tool('async-danger', {}, async_failure)
with pytest.raises(RuntimeError) as raised:
    asyncio.run(run_async_failure())
assert raised.value is async_error
_assert_event(captured[0], name='async-danger', outcome='error', sequence=1)
wire = json.dumps(captured[0]['body'])
assert async_error.args[0] not in wire
assert 'traceback' not in wire
```

## Next Steps


---

*Source: test_tool_events.py:77 | Complexity: Advanced | Last updated: 2026-08-11*