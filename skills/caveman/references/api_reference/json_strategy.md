# API Reference: json_strategy.go

**Language**: Go

**Source**: `engine/compressors/json_strategy.go`

---

## Classes

### jsonStrategy

**Inherits from**: (none)



## Functions

### NewJSONStrategy(counter: tokens.Counter) → Compressor

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| counter | tokens.Counter | - | - |

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



### CompressWithMetadata(input: []byte, query: string) → ([]byte, Metadata, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |
| query | string | - | - |

**Returns**: `([]byte, Metadata, bool)`


