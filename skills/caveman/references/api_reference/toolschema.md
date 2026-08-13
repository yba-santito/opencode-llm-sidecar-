# API Reference: toolschema.go

**Language**: Go

**Source**: `engine/compressors/toolschema.go`

---

## Classes

### toolSchemaCompressor

**Inherits from**: (none)



## Functions

### NewToolSchema() → Compressor

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



### compressDocument(v: any) → any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `any`



### compressToolEnvelope(v: any) → any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `any`



### isToolEnvelope(value: map[string]any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | map[string]any | - | - |

**Returns**: `bool`



### cloneJSONMap(value: map[string]any) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | map[string]any | - | - |

**Returns**: `map[string]`



### compressSchema(v: any, inUserKeys: bool) → any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |
| inUserKeys | bool | - | - |

**Returns**: `any`



### hasConstraintMarker(s: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `bool`



### compressDescription(s: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `string`



### splitSentences(s: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: (none)



### endsWithAbbrev(s: string, dotIdx: int) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |
| dotIdx | int | - | - |

**Returns**: `bool`



### isSpaceByte(b: byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | byte | - | - |

**Returns**: `bool`



### isLetterByte(b: byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | byte | - | - |

**Returns**: `bool`



### capRunes(s: string, maxBytes: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |
| maxBytes | int | - | - |

**Returns**: `string`


