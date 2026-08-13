# API Reference: recurring.go

**Language**: Go

**Source**: `proxy/internal/store/recurring.go`

---

## Classes

### blockLocator

**Inherits from**: (none)



### recurringOccurrence

**Inherits from**: (none)



### fpAgg

**Inherits from**: (none)



### recurringEntry

**Inherits from**: (none)



### recurringResult

**Inherits from**: (none)



### recurringMiner

**Inherits from**: (none)



## Functions

### newRecurringMiner()

**Returns**: (none)



### newRecurringStreamMiner()

**Returns**: (none)



### merge(other: *recurringMiner)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| other | *recurringMiner | - | - |

**Returns**: (none)



### segmentBlocks(text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: (none)



### extractTurnBlocks(obj: map[string]any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |

**Returns**: (none)



### normalizeBlock(block: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| block | string | - | - |

**Returns**: `string`



### contentSHA256(raw: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | string | - | - |

**Returns**: `string`



### observeTurn(unknown: rootKind, relPath: string, jsonlLine: int, ts: string, obj: map[string]any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | rootKind | - | - |
| relPath | string | - | - |
| jsonlLine | int | - | - |
| ts | string | - | - |
| obj | map[string]any | - | - |

**Returns**: (none)



### result() → recurringResult

**Returns**: `recurringResult`



### recurringPerTurn(e: recurringEntry, turns: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| e | recurringEntry | - | - |
| turns | int | - | - |

**Returns**: `int`



### recurringSinks(rec: recurringResult, beh: behaviorScan, turnsPerDay: float64)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rec | recurringResult | - | - |
| beh | behaviorScan | - | - |
| turnsPerDay | float64 | - | - |

**Returns**: (none)


