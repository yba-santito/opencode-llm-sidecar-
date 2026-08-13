# How To: Openai Self Emits Key And Unknown Provider Orders Only

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: test openai self emits key and unknown provider orders only

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
cave = _cave('assembly-other-providers')
```

### Step 2: Assign openai = cave.assemble(...)

```Python
openai = cave.assemble(_options(provider='openai', session_id='openai-self', turn=1, emit_cache_hints='self'))
```

**Verification:**
```Python
assert openai.request['prompt_cache_key'] == openai.prefix_hash[:32]
```

### Step 3: Assign source = _slots(...)

```Python
source = _slots(1)
```

### Step 4: Assign unknown = cave.assemble(...)

```Python
unknown = cave.assemble(AssembleOptions(provider='other', model='other-model', session_id='unknown', slots=[source[3], source[1], source[2]], emit_cache_hints='self'))
```

**Verification:**
```Python
assert [slot['stability'] for slot in unknown.request['slots']] == ['stable', 'session', 'volatile']
```


## Complete Example

```Python
# Workflow
cave = _cave('assembly-other-providers')
openai = cave.assemble(_options(provider='openai', session_id='openai-self', turn=1, emit_cache_hints='self'))
assert openai.request['prompt_cache_key'] == openai.prefix_hash[:32]
assert openai.breakpoints == ['prompt_cache_key']
assert [message['role'] for message in openai.request['messages']] == ['system', 'user', 'user']
source = _slots(1)
unknown = cave.assemble(AssembleOptions(provider='other', model='other-model', session_id='unknown', slots=[source[3], source[1], source[2]], emit_cache_hints='self'))
assert [slot['stability'] for slot in unknown.request['slots']] == ['stable', 'session', 'volatile']
assert unknown.breakpoints == []
```

## Next Steps


---

*Source: test_assembly.py:167 | Complexity: Intermediate | Last updated: 2026-08-11*