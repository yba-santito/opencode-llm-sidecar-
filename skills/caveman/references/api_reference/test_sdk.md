# API Reference: test_sdk.py

**Language**: Python

**Source**: `packages/sdk/python/tests/test_sdk.py`

---

## Functions

### test_init_no_network() → None

**Returns**: `None`



### test_bedrock_descriptor_defaults_to_runtime() → None

**Returns**: `None`



### test_bedrock_descriptor_mantle_is_explicit() → None

**Returns**: `None`



### test_bedrock_descriptor_rejects_unknown_endpoint() → None

**Returns**: `None`



### test_vertex_provider_client() → None

**Returns**: `None`



### _fake_urlopen(response_data: dict) → MagicMock

Return a context-manager mock that yields a fake HTTP response.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| response_data | dict | - | - |

**Returns**: `MagicMock`



### test_tool_search_posts_correct_body_and_returns_result() → None

SDK posts the tool catalog + query to /sdk/v1/tool-search and parses the response.

**Returns**: `None`



### test_tool_search_malformed_counters_fail_closed() → None

**Returns**: `None`



### test_tool_search_minimal_args() → None

tool_search works without optional context and max_tools.

**Returns**: `None`



### test_tools_handle_applies_default_cap_and_allows_override() → None

**Returns**: `None`



### test_tools_handle_validates_deferred_counts_and_never_hides_mandatory_tools() → None

**Returns**: `None`



### test_tool_search_uses_custom_workflow_header() → None

tool_search sends the workflow in the x-cave-workflow header.

**Returns**: `None`



### test_provider_request_can_send_tool_session_header() → None

**Returns**: `None`



### test_service_urls_normalize_trailing_slashes_and_reject_query_or_fragment() → None

**Returns**: `None`



### test_cave_plan_gets_plan_with_key_header() → None

cave_plan GETs /sdk/v1/cave-plan with x-cave-api-key and returns the plan verbatim.

**Returns**: `None`



### test_cave_plan_stays_on_gateway_when_control_url_is_set() → None

**Returns**: `None`



### test_cave_plan_propagates_non_200() → None

A non-200 raises HTTPError (no byte-safe pass-through — this reads state).

**Returns**: `None`



### fake_urlopen(req, timeout)

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



### fake_urlopen(req, timeout)

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



### fake_urlopen(req, timeout)

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



### fake_urlopen(req, timeout)

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



### fake_urlopen(req, timeout)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | None | - | - |
| timeout | None | - | - |

**Returns**: (none)


