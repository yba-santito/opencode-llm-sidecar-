# API Reference: diff.go

**Language**: Go

**Source**: `engine/compressors/diff.go`

---

## Classes

### diffCompressor

**Inherits from**: (none)



## Functions

### diffMarker(n: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |

**Returns**: `string`



### NewDiff() → Compressor

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



### isDiffStructuralLine(line: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | []byte | - | - |

**Returns**: `bool`



### isChangedDiffLine(line: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | []byte | - | - |

**Returns**: `bool`


