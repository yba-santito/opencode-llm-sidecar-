# API Reference: cavemem.py

**Language**: Python

**Source**: `mem/py/cavemem.py`

---

## Functions

### _binary() → str

**Returns**: `str`



### _call(args: list[str], input_text: str | None = None) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | list[str] | - | - |
| input_text | str | None | None | - |

**Returns**: `dict[str, Any]`



### remember(text: str) → dict[str, Any]

Store a memory. Returns {id, created_at, basis}. Idempotent on identical text.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | str | - | - |

**Returns**: `dict[str, Any]`



### recall(query: str, limit: int | None = None, token_budget: int | None = None) → dict[str, Any]

Recall memories. token_budget defaults to 2000; explicit 0 is unlimited.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| query | str | - | - |
| limit | int | None | None | - |
| token_budget | int | None | None | - |

**Returns**: `dict[str, Any]`



### supersede(mem_id: str, text: str) → dict[str, Any]

Replace one current memory while preserving its version history.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| mem_id | str | - | - |
| text | str | - | - |

**Returns**: `dict[str, Any]`



### history(mem_id: str) → dict[str, Any]

Return oldest-to-newest versions for a memory lineage.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| mem_id | str | - | - |

**Returns**: `dict[str, Any]`



### forget(mem_id: str) → dict[str, Any]

Delete a memory by id. Returns {forgotten}.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| mem_id | str | - | - |

**Returns**: `dict[str, Any]`


