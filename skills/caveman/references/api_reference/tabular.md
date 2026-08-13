# API Reference: tabular.go

**Language**: Go

**Source**: `engine/compressors/tabular.go`

---

## Classes

### parsedTable

**Inherits from**: (none)



### tabularCompressor

**Inherits from**: (none)



## Functions

### tabularMarker(n: int, summary: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |
| summary | string | - | - |

**Returns**: `string`



### summarizeRowRun(header: []string, run: [][]string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| header | []string | - | - |
| run | [][]string | - | - |

**Returns**: `string`



### NewTabular() → Compressor

**Returns**: `Compressor`



### ContentType() → string

**Returns**: `string`



### SafetyClass() → safety

**Returns**: `safety`



### Compress(input: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `([]byte, bool)`



### CompressQuery(input: []byte, query: string) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |
| query | string | - | - |

**Returns**: `([]byte, bool)`



### LooksTabular(input: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `bool`



### compress(input: []byte, query: string) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |
| query | string | - | - |

**Returns**: `([]byte, bool)`



### parseTable(input: []byte) → (parsedTable, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `(parsedTable, bool)`



### parseMarkdownTable(input: []byte) → (parsedTable, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `(parsedTable, bool)`



### keepNumericExtrema(rows: [][]string, start: int, keep: []bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rows | [][]string | - | - |
| start | int | - | - |
| keep | []bool | - | - |

**Returns**: (none)


