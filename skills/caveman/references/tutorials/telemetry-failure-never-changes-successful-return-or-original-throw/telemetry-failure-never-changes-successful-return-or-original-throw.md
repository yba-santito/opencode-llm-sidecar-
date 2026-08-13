# How To: Telemetry Failure Never Changes Successful Return Or Original Throw

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test telemetry failure never changes successful return or original throw

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
captured, fake_urlopen = _capture(fail=True)
```

### Step 2: Assign value = value

```Python
value = {'preserved': True}
```

**Verification:**
```Python
assert trace.tool('ok', {}, lambda: value) is value
```

### Step 3: Call _assert_event()

```Python
_assert_event(captured[0], name='ok', outcome='ok', sequence=1)
```

### Step 4: Assign unknown = _capture(...)

```Python
captured, fake_urlopen = _capture(fail=True)
```

### Step 5: Assign original = RuntimeError(...)

```Python
original = RuntimeError('original-tool-secret')
```

### Step 6: Call trace.tool()

```Python
trace.tool('bad', {}, fail)
```

**Verification:**
```Python
assert raised.value is original
```

### Step 7: Call _assert_event()

```Python
_assert_event(captured[0], name='bad', outcome='error', sequence=1)
```

**Verification:**
```Python
assert original.args[0] not in json.dumps(captured[0]['body'])
```


## Complete Example

```Python
# Workflow
captured, fake_urlopen = _capture(fail=True)
value = {'preserved': True}
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    with _cave().trace(trace_id=TRACE_ID, span_id=SPAN_ID) as trace:
        assert trace.tool('ok', {}, lambda: value) is value
_assert_event(captured[0], name='ok', outcome='ok', sequence=1)
captured, fake_urlopen = _capture(fail=True)
original = RuntimeError('original-tool-secret')

def fail() -> Any:
    raise original
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    with _cave().trace(trace_id=TRACE_ID, span_id=SPAN_ID) as trace:
        with pytest.raises(RuntimeError) as raised:
            trace.tool('bad', {}, fail)
assert raised.value is original
_assert_event(captured[0], name='bad', outcome='error', sequence=1)
assert original.args[0] not in json.dumps(captured[0]['body'])
```

## Next Steps


---

*Source: test_tool_events.py:129 | Complexity: Intermediate | Last updated: 2026-08-11*