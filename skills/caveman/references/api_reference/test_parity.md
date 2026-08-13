# API Reference: test_parity.py

**Language**: Python

**Source**: `packages/sdk/python/tests/test_parity.py`

---

## Functions

### _make_cave() → Cave

**Returns**: `Cave`



### _fake_response(data: dict[str, Any]) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | dict[str, Any] | - | - |

**Returns**: `MagicMock`



### _build_catalog(entries: list[dict[str, Any]]) → list[CaveTool]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| entries | list[dict[str, Any]] | - | - |

**Returns**: `list[CaveTool]`



### _context_assemble(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _tool_search(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _tools_builder_search(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _artifacts_page(cave: Cave, inp: dict[str, Any]) → Any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `Any`



### _artifacts_get(cave: Cave, inp: dict[str, Any]) → Any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `Any`



### _model_create_async(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _model_create_traced(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _provider_create_untraced(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _bedrock(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _compress(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _cave_plan(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _checkpoint(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _context_pack(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _checkpoint_expand(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _event_tool_call(cave: Cave, inp: dict[str, Any]) → Any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `Any`



### _otlp_export(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _otlp_export_traced(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _jobs_unavailable(cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### _run_breaker(_cave: Cave, inp: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _cave | Cave | - | - |
| inp | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### test_parity(op: dict[str, Any]) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| op | dict[str, Any] | - | - |

**Returns**: `None`



### test_parity_fixtures_cover_surface() → None

**Returns**: `None`



### test_tool_events_are_traced_while_bare_provider_calls_stay_untraced() → None

**Returns**: `None`



### fake_urlopen(req: Any, timeout: float) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | Any | - | - |
| timeout | float | - | - |

**Returns**: `MagicMock`


