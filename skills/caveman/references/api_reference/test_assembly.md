# API Reference: test_assembly.py

**Language**: Python

**Source**: `packages/sdk/python/tests/test_assembly.py`

---

## Functions

### _cave(agent: str) → Cave

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| agent | str | - | - |

**Returns**: `Cave`



### _slots(turn: int) → list[AssemblySlot]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| turn | int | - | - |

**Returns**: `list[AssemblySlot]`



### _canonical(value: Any) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Any | - | - |

**Returns**: `str`



### _contains_key(value: Any, key: str) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Any | - | - |
| key | str | - | - |

**Returns**: `bool`



### _options() → AssembleOptions

**Returns**: `AssembleOptions`



### test_assemble_keeps_prefix_bytes_identical_across_ten_volatile_turns() → None

**Returns**: `None`



### test_assemble_hashes_canonical_utf8_prefix_bytes() → None

**Returns**: `None`



### test_mutating_stable_slot_on_turn_six_fails_without_request() → None

**Returns**: `None`



### test_anthropic_self_is_tools_first_and_none_emits_no_hints() → None

**Returns**: `None`



### test_openai_self_emits_key_and_unknown_provider_orders_only() → None

**Returns**: `None`



### test_provider_client_attaches_assembly_declaration_header() → None

**Returns**: `None`



### fake_urlopen(req: Any, timeout: float) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | Any | - | - |
| timeout | float | - | - |

**Returns**: `MagicMock`


