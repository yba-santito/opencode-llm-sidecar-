# API Reference: terminal.go

**Language**: Go

**Source**: `engine/compressors/terminal.go`

---

## Classes

### terminalCompressor

**Inherits from**: (none)



## Functions

### termMarker(n: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |

**Returns**: `string`



### NewTerminal() → Compressor

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



### collapseCarriageReturns(b: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |

**Returns**: (none)



### elideMiddle(lines: [][]byte, unknown: head, tail: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lines | [][]byte | - | - |
| unknown | head | - | - |
| tail | int | - | - |

**Returns**: (none)


