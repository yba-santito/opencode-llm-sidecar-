# API Reference: test_tool_events.py

**Language**: Python

**Source**: `packages/sdk/python/tests/test_tool_events.py`

---

## Functions

### _response() → MagicMock

**Returns**: `MagicMock`



### _capture() → tuple[list[dict[str, Any]], Any]

**Returns**: `tuple[list[dict[str, Any]], Any]`



### _cave() → Cave

**Returns**: `Cave`



### _assert_event(request: dict[str, Any]) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | dict[str, Any] | - | - |

**Returns**: `None`



### test_success_returns_original_value_and_emits_joined_ok_event() → None

**Returns**: `None`



### test_synchronous_and_asynchronous_failures_emit_error_without_exception_leakage() → None

**Returns**: `None`



### test_cancellation_is_error_and_original_cancellation_propagates() → None

**Returns**: `None`



### test_telemetry_failure_never_changes_successful_return_or_original_throw() → None

**Returns**: `None`



### test_sequence_follows_start_order_when_async_completions_reverse() → None

**Returns**: `None`



### test_each_trace_owns_independent_sequence() → None

**Returns**: `None`



### test_sequence_increment_is_thread_safe() → None

**Returns**: `None`



### fake_urlopen(req: Any, timeout: float) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | Any | - | - |
| timeout | float | - | - |

**Returns**: `MagicMock`



### sync_failure() → Any

**Returns**: `Any`



### async_failure() → Any

**Async function**

**Returns**: `Any`



### run_async_failure() → None

**Async function**

**Returns**: `None`



### cancelled() → Any

**Async function**

**Returns**: `Any`



### run_cancelled() → None

**Async function**

**Returns**: `None`



### fail() → Any

**Returns**: `Any`



### run() → None

**Async function**

**Returns**: `None`



### first() → str

**Async function**

**Returns**: `str`



### second() → str

**Async function**

**Returns**: `str`


