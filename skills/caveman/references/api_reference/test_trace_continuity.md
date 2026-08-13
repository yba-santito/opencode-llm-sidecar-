# API Reference: test_trace_continuity.py

**Language**: Python

**Source**: `packages/sdk/python/tests/test_trace_continuity.py`

---

## Functions

### _fake_response(data: dict[str, Any]) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | dict[str, Any] | - | - |

**Returns**: `MagicMock`



### _cave() → Cave

**Returns**: `Cave`



### _capture(data: dict[str, Any]) → tuple[list[dict[str, Any]], Any]

A urlopen stub plus the list it records lowercased headers into.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | dict[str, Any] | - | - |

**Returns**: `tuple[list[dict[str, Any]], Any]`



### test_trace_mints_hex_ids() → None

**Returns**: `None`



### test_two_traces_get_distinct_ids() → None

**Returns**: `None`



### test_provider_calls_inside_a_trace_carry_continuity_headers() → None

**Returns**: `None`



### test_injected_ids_are_used_verbatim() → None

**Returns**: `None`



### test_injected_ids_are_canonicalized_or_replaced() → None

**Returns**: `None`



### test_trace_scoped_sdk_calls_carry_continuity_headers() → None

**Returns**: `None`



### test_provider_clients_off_the_cave_carry_no_continuity_headers() → None

**Returns**: `None`



### test_trace_bound_exporter_reuses_the_trace_id() → None

**Returns**: `None`



### test_trace_exporters_with_different_service_names_keep_separate_buffers() → None

**Returns**: `None`



### test_concurrent_first_exporter_lookup_returns_one_buffer() → None

**Returns**: `None`



### test_explicit_span_trace_id_wins_over_the_trace_binding() → None

**Returns**: `None`



### test_cave_level_exporter_has_no_default_trace_id() → None

**Returns**: `None`



### fake_urlopen(req: Any, timeout: float) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | Any | - | - |
| timeout | float | - | - |

**Returns**: `MagicMock`



### fake_urlopen(req: Any, timeout: float) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | Any | - | - |
| timeout | float | - | - |

**Returns**: `MagicMock`



### slow_exporter() → Any

**Returns**: `Any`



### resolve(index: int) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| index | int | - | - |

**Returns**: `None`


