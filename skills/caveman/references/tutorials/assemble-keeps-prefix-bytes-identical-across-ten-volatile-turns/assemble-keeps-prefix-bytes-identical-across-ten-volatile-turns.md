# How To: Assemble Keeps Prefix Bytes Identical Across Ten Volatile Turns

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: test assemble keeps prefix bytes identical across ten volatile turns

## Prerequisites

**Required Modules:**
- `__future__`
- `hashlib`
- `json`
- `typing`
- `unittest.mock`
- `pytest`
- `caveman_cloud`


## Step-by-Step Guide

### Step 1: Assign cave = _cave(...)

```Python
cave = _cave('assembly-ten-turn')
```

### Step 2: Assign built = cave.assemble(...)

```Python
built = cave.assemble(_options(session_id='ten-turn', turn=turn))
```

### Step 3: Assign prefix = value

```Python
prefix = {'model': built.request['model'], 'system': built.request['system'], 'tools': built.request['tools']}
```

### Step 4: Assign digest = hashlib.sha256.hexdigest(...)

```Python
digest = hashlib.sha256(_canonical(prefix).encode()).hexdigest()
```

### Step 5: Call hashes.append()

```Python
hashes.append(digest)
```

**Verification:**
```Python
assert built.prefix_hash == digest
```


## Complete Example

```Python
# Workflow
cave = _cave('assembly-ten-turn')
hashes: list[str] = []
for turn in range(10):
    built = cave.assemble(_options(session_id='ten-turn', turn=turn))
    prefix = {'model': built.request['model'], 'system': built.request['system'], 'tools': built.request['tools']}
    digest = hashlib.sha256(_canonical(prefix).encode()).hexdigest()
    hashes.append(digest)
    assert built.prefix_hash == digest
    assert not _contains_key(built.request, 'cache_control')
    assert built.breakpoints == []
    assert built.basis == 'inferred'
    assert built.token_basis == 'estimated_bytes_div_4'
    assert built.volatile_below_breakpoint is True
assert len(set(hashes)) == 1
```

## Next Steps


---

*Source: test_assembly.py:88 | Complexity: Intermediate | Last updated: 2026-08-11*