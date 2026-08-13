# How To: Sequence Follows Start Order When Async Completions Reverse

**Difficulty**: Advanced
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test sequence follows start order when async completions reverse

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

### Step 2: Call asyncio.run()

```Python
asyncio.run(run())
```

**Verification:**
```Python
assert len(captured) == 2
```

### Step 3: Call _assert_event()

```Python
_assert_event(captured[0], name='second', outcome='ok', sequence=2)
```

### Step 4: Call _assert_event()

```Python
_assert_event(captured[1], name='first', outcome='ok', sequence=1)
```


## Complete Example

```Python
# Workflow
captured, fake_urlopen = _capture()

async def run() -> None:
    first_gate = asyncio.Event()

    async def first() -> str:
        await first_gate.wait()
        return 'first-result'

    async def second() -> str:
        return 'second-result'
    with patch('urllib.request.urlopen', side_effect=fake_urlopen):
        with _cave().trace(trace_id=TRACE_ID, span_id=SPAN_ID) as trace:
            first_call = trace.tool('first', {}, first)
            second_call = trace.tool('second', {}, second)
            assert await second_call == 'second-result'
            first_gate.set()
            assert await first_call == 'first-result'
asyncio.run(run())
assert len(captured) == 2
_assert_event(captured[0], name='second', outcome='ok', sequence=2)
_assert_event(captured[1], name='first', outcome='ok', sequence=1)
```

## Next Steps


---

*Source: test_tool_events.py:152 | Complexity: Advanced | Last updated: 2026-08-11*