# API Reference: factsheet.go

**Language**: Go

**Source**: `engine/pixel/factsheet.go`

---

## Classes

### factPattern

**Inherits from**: (none)



### FactSheetEntry

**Inherits from**: (none)



## Functions

### ExtractFactSheetTokens(text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: (none)



### ExtractFactSheetEntries(text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: (none)



### chunkKey(start: int, tok: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| start | int | - | - |
| tok | string | - | - |

**Returns**: `string`



### containsDigit(s: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `bool`



### rankFactEntries(counts: map[string]int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| counts | map[string]int | - | - |

**Returns**: (none)



### priorityTier(tok: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tok | string | - | - |

**Returns**: `int`



### ExtractFactSheetEntriesAllPages(text: string, charsPerPage: int) → (kept []FactSheetEntry, dropped int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| charsPerPage | int | - | - |

**Returns**: `(kept []FactSheetEntry, dropped int)`



### mathCeilDiv(unknown: a, b: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | a | - | - |
| b | int | - | - |

**Returns**: `int`



### FactSheetTextFromEntries(entries: []FactSheetEntry) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| entries | []FactSheetEntry | - | - |

**Returns**: `string`



### FactSheetText(source: string, maxChars: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| maxChars | int | - | - |

**Returns**: `string`



### strconvItoa(n: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |

**Returns**: `string`



### commaFreeInt(n: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |

**Returns**: `string`


