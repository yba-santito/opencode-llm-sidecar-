# API Reference: searchresult.go

**Language**: Go

**Source**: `engine/compressors/searchresult.go`

---

## Classes

### searchResultCompressor

**Inherits from**: (none)



## Functions

### searchResultMarker(n: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |

**Returns**: `string`



### NewSearchResult() → Compressor

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


