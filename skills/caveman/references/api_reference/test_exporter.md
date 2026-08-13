# API Reference: test_exporter.py

**Language**: Python

**Source**: `packages/sdk/python/tests/test_exporter.py`

---

## Functions

### _fake_urlopen(response_data: dict[str, Any]) → MagicMock

Return a context-manager mock that yields a fake HTTP response.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| response_data | dict[str, Any] | - | - |

**Returns**: `MagicMock`



### _attr_map(otlp_attrs: list[dict[str, Any]]) → dict[str, Any]

Flatten an OTLP attribute list back into {key: scalar} for assertions.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| otlp_attrs | list[dict[str, Any]] | - | - |

**Returns**: `dict[str, Any]`



### test_exporter_is_otel_exporter() → None

**Returns**: `None`



### test_record_span_maps_genai_attributes_and_ids() → None

**Returns**: `None`



### test_record_span_canonicalizes_valid_ids_and_replaces_or_drops_malformed_ids() → None

**Returns**: `None`



### test_record_span_omits_malformed_counters_and_reserved_overrides() → None

**Returns**: `None`



### test_export_posts_otlp_payload_with_headers_and_attrs() → None

**Returns**: `None`



### test_error_status_maps_to_code_2() → None

**Returns**: `None`



### test_unknown_runtime_status_fails_closed_to_unset() → None

**Returns**: `None`



### test_export_empty_is_noop_no_network() → None

**Returns**: `None`



### test_overlapping_exports_serialize_without_duplicate_or_dropped_spans() → None

**Returns**: `None`



### test_custom_service_name() → None

**Returns**: `None`



### fake_urlopen(req, timeout)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | None | - | - |
| timeout | None | - | - |

**Returns**: (none)



### boom(req, timeout)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | None | - | - |
| timeout | None | - | - |

**Returns**: (none)



### fake_urlopen(req, timeout)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | None | - | - |
| timeout | None | - | - |

**Returns**: (none)



### run_export() → None

**Returns**: `None`


