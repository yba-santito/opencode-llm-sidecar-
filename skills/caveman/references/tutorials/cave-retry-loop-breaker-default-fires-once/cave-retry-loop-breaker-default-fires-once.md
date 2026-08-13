# How To: Cave Retry Loop Breaker Default Fires Once

**Difficulty**: Advanced
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: test cave retry loop breaker default fires once

## Prerequisites

**Required Modules:**
- `__future__`
- `unittest.mock`
- `pytest`
- `caveman_cloud`


## Step-by-Step Guide

### Step 1: Assign cave = Cave(...)

```Python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
```

### Step 2: Assign breaker = cave.retry_loop_breaker(...)

```Python
breaker = cave.retry_loop_breaker()
```

### Step 3: Assign fired = 0

```Python
fired = 0
```

### Step 4: Call breaker.record()

```Python
breaker.record('loop_tool', {'same': True})
```

**Verification:**
```Python
assert fired == 1
```


## Complete Example

```Python
# Workflow
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
breaker = cave.retry_loop_breaker()
fired = 0
for _ in range(10):
    try:
        breaker.record('loop_tool', {'same': True})
    except RetryLoopError:
        fired += 1
        break
assert fired == 1
```

## Next Steps


---

*Source: test_structural.py:29 | Complexity: Advanced | Last updated: 2026-08-11*