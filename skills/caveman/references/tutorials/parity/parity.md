# How To: Parity

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: pytest, mock, workflow, integration

## Overview

Workflow: test parity

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `__future__`
- `json`
- `urllib.error`
- `urllib.request`
- `pathlib`
- `typing`
- `unittest.mock`
- `pytest`
- `caveman_cloud`

**Setup Required:**
```Python
# Fixtures: op
```

## Step-by-Step Guide

### Step 1: Assign handler = HANDLERS.get(...)

```Python
handler = HANDLERS.get(op['name'])
```

**Verification:**
```Python
assert handler is not None, f'''no Python parity handler for operation "{op['name']}" — the SDK is missing this capability'''
```

### Step 2: Assign actual = handler(...)

```Python
actual = handler(_make_cave(), op['input'])
```

### Step 3: Assign wire = unknown.get(...)

```Python
wire = op['expect'].get('wire')
```

**Verification:**
```Python
assert len(captured) == 1, f"{op['name']}: expected exactly one wire request, got {len(captured)}"
```

### Step 4: Assign req = value

```Python
req = captured[0]
```

### Step 5: Assign base = value

```Python
base = CONFIG['control_url'] if wire.get('base') == 'control' else CONFIG['base_url']
```

**Verification:**
```Python
assert req['url'] == base + wire['path'], f"{op['name']}: url"
```

### Step 6: Assign exp_headers = value

```Python
exp_headers = FIXTURES[wire['headers']] if isinstance(wire['headers'], str) else wire['headers']
```

**Verification:**
```Python
assert req['headers'] == exp_headers, f"{op['name']}: headers"
```

### Step 7: Assign expected = value

```Python
expected = op['response'] if op['expect'].get('result_from') == 'response' else op['expect'].get('result')
```

**Verification:**
```Python
assert actual == expected, f"{op['name']}: result"
```


## Complete Example

```Python
# Setup
# Fixtures: op

# Workflow
handler = HANDLERS.get(op['name'])
assert handler is not None, f'''no Python parity handler for operation "{op['name']}" — the SDK is missing this capability'''
captured: list[dict[str, Any]] = []

def fake_urlopen(req: Any, timeout: float) -> MagicMock:
    captured.append({'url': req.full_url, 'method': req.get_method(), 'headers': {k.lower(): v for k, v in dict(req.headers).items()}, 'body': json.loads(req.data) if req.data else None})
    if op.get('transport') == 'error':
        raise urllib.error.URLError('simulated transport error')
    return _fake_response(op.get('response', {}))
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    actual = handler(_make_cave(), op['input'])
wire = op['expect'].get('wire')
if wire:
    assert len(captured) == 1, f"{op['name']}: expected exactly one wire request, got {len(captured)}"
    req = captured[0]
    base = CONFIG['control_url'] if wire.get('base') == 'control' else CONFIG['base_url']
    assert req['url'] == base + wire['path'], f"{op['name']}: url"
    assert req['method'] == wire['method'], f"{op['name']}: method"
    exp_headers = FIXTURES[wire['headers']] if isinstance(wire['headers'], str) else wire['headers']
    assert req['headers'] == exp_headers, f"{op['name']}: headers"
    if 'body' in wire:
        assert req['body'] == wire['body'], f"{op['name']}: body"
    elif 'body_keys' in wire:
        assert sorted((req['body'] or {}).keys()) == sorted(wire['body_keys']), f"{op['name']}: body_keys"
else:
    assert len(captured) == 0, f"{op['name']}: expected no wire request"
expected = op['response'] if op['expect'].get('result_from') == 'response' else op['expect'].get('result')
assert actual == expected, f"{op['name']}: result"
```

## Next Steps


---

*Source: test_parity.py:357 | Complexity: Intermediate | Last updated: 2026-08-11*