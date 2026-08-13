# API Reference: code_nocgo.go

**Language**: Go

**Source**: `engine/compressors/code_nocgo.go`

---

## Classes

### codeCompressor

**Inherits from**: (none)



## Functions

### newCode() → Compressor

**Returns**: `Compressor`



### newCodeWith(opts: CodeOptions) → Compressor

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | CodeOptions | - | - |

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


