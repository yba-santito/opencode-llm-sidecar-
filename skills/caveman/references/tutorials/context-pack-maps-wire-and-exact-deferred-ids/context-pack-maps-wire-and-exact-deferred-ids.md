# How To: Context Pack Maps Wire And Exact Deferred Ids

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test context pack maps wire and exact deferred ids

## Prerequisites

**Required Modules:**
- `__future__`
- `json`
- `urllib.request`
- `unittest.mock`
- `caveman_cloud`


## Step-by-Step Guide

### Step 1: Assign response = value

```Python
response = {'items': [{'id': 'deploy', 'text': 'server copy is ignored'}], 'tokens_used': 30, 'tokens_before': 75, 'tokens_saved': 45, 'deferred_count': 2, 'deferred_ids': ['intro', 'billing'], 'basis': 'inferred'}
```

### Step 2: Assign items = value

```Python
items = [ContextPackItem(id='intro', text='overview', tokens=20), ContextPackItem(id='deploy', text='deploy ERROR', tokens=30, pin=True), ContextPackItem(id='billing', text='billing polish', tokens=25)]
```

### Step 3: Assign result = _cave.context.pack(...)

```Python
result = _cave().context.pack('deploy failure', items, ContextPackOptions(max_tokens=30, reserve_tokens=5, recency_half_life_ms=3600000))
```

**Verification:**
```Python
assert len(captured) == 1
```

### Step 4: Assign body = value

```Python
body = captured[0].data
```

**Verification:**
```Python
assert isinstance(body, bytes)
```


## Complete Example

```Python
# Workflow
captured: list[urllib.request.Request] = []
response = {'items': [{'id': 'deploy', 'text': 'server copy is ignored'}], 'tokens_used': 30, 'tokens_before': 75, 'tokens_saved': 45, 'deferred_count': 2, 'deferred_ids': ['intro', 'billing'], 'basis': 'inferred'}

def fake_urlopen(req: urllib.request.Request, timeout: float) -> MagicMock:
    captured.append(req)
    assert timeout == 30
    return _response(response)
items = [ContextPackItem(id='intro', text='overview', tokens=20), ContextPackItem(id='deploy', text='deploy ERROR', tokens=30, pin=True), ContextPackItem(id='billing', text='billing polish', tokens=25)]
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    result = _cave().context.pack('deploy failure', items, ContextPackOptions(max_tokens=30, reserve_tokens=5, recency_half_life_ms=3600000))
assert len(captured) == 1
assert captured[0].full_url == 'http://localhost:8787/sdk/v1/context/pack'
assert captured[0].get_method() == 'POST'
body = captured[0].data
assert isinstance(body, bytes)
assert json.loads(body) == {'query': 'deploy failure', 'items': [{'id': 'intro', 'text': 'overview', 'tokens': 20}, {'id': 'deploy', 'text': 'deploy ERROR', 'tokens': 30, 'pin': True}, {'id': 'billing', 'text': 'billing polish', 'tokens': 25}], 'options': {'max_tokens': 30, 'reserve_tokens': 5, 'recency_half_life_ms': 3600000}}
assert result.items == [items[1]]
assert result.deferred_ids == ['intro', 'billing']
assert result.deferred_count == 2
assert result.tokens_saved == 45
assert result.basis == 'inferred'
```

## Next Steps


---

*Source: test_context_pack.py:28 | Complexity: Intermediate | Last updated: 2026-08-11*