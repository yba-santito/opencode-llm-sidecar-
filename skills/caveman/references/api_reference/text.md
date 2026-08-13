# API Reference: text.go

**Language**: Go

**Source**: `engine/compressors/text.go`

---

## Classes

### textCompressor

**Inherits from**: (none)



## Functions

### textMarker(n: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |

**Returns**: `string`



### NewText() → Compressor

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



### looksHTML(input: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `bool`



### compressHTMLNoise(input: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: (none)



### splitTextSections(input: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: (none)



### isTextHeading(section: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| section | []byte | - | - |

**Returns**: `bool`


