# API Reference: log.go

**Language**: Go

**Source**: `engine/compressors/log.go`

---

## Classes

### logCompressor

**Inherits from**: (none)



## Functions

### logMarker(n: int, summary: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |
| summary | string | - | - |

**Returns**: `string`



### summarizeLogRun(run: [][]byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| run | [][]byte | - | - |

**Returns**: `string`



### NewLog() → Compressor

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



### compress(input: []byte, query: string) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |
| query | string | - | - |

**Returns**: `([]byte, bool)`


