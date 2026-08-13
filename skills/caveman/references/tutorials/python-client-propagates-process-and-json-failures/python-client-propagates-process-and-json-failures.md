# How To: Python Client Propagates Process And Json Failures

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test python client propagates process and json failures

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `__future__`
- `json`
- `os`
- `subprocess`
- `types`
- `pytest`
- `cavemem`

**Setup Required:**
```Python
# Fixtures: monkeypatch
```

## Step-by-Step Guide

### Step 1: Call monkeypatch.setattr()

```Python
monkeypatch.setattr(cavemem.subprocess, 'run', process_failure)
```

### Step 2: Call cavemem.remember()

```Python
cavemem.remember('failure')
```

### Step 3: Call monkeypatch.setattr()

```Python
monkeypatch.setattr(cavemem.subprocess, 'run', lambda *_args, **_kwargs: SimpleNamespace(stdout='not json'))
```

### Step 4: Call cavemem.remember()

```Python
cavemem.remember('invalid')
```


## Complete Example

```Python
# Setup
# Fixtures: monkeypatch

# Workflow
def process_failure(*_args: object, **_kwargs: object) -> SimpleNamespace:
    raise subprocess.CalledProcessError(17, ['cavemem'])
monkeypatch.setattr(cavemem.subprocess, 'run', process_failure)
with pytest.raises(subprocess.CalledProcessError):
    cavemem.remember('failure')
monkeypatch.setattr(cavemem.subprocess, 'run', lambda *_args, **_kwargs: SimpleNamespace(stdout='not json'))
with pytest.raises(json.JSONDecodeError):
    cavemem.remember('invalid')
```

## Next Steps


---

*Source: test_cavemem.py:64 | Complexity: Intermediate | Last updated: 2026-08-11*