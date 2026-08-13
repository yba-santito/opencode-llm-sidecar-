# API Reference: toolschema_annotations.go

**Language**: Go

**Source**: `engine/compressors/toolschema_annotations.go`

---

## Classes

### cutSpan

**Inherits from**: (none)



### annotationStripper

**Inherits from**: (none)



### toolSchemaAnnotationsCompressor

**Inherits from**: (none)



## Functions

### StripToolSchemaAnnotations(tools: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tools | []byte | - | - |

**Returns**: `([]byte, bool)`



### catalog(i: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| i | int | - | - |

**Returns**: `(int, bool)`



### envelopeArray(start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| start | int | - | - |

**Returns**: `(int, bool)`



### envelope(start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| start | int | - | - |

**Returns**: `(int, bool)`



### schema(start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| start | int | - | - |

**Returns**: `(int, bool)`



### nameMap(start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| start | int | - | - |

**Returns**: `(int, bool)`



### walkObject(start: int, descend func(key: string, valueStart: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| start | int | - | - |
| descend func(key | string | - | - |
| valueStart | int | - | - |

**Returns**: `(int, bool)`



### apply()

**Returns**: (none)



### skipValue(body: []byte, i: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| i | int | - | - |

**Returns**: `(int, bool)`



### stringEnd(body: []byte, start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| start | int | - | - |

**Returns**: `(int, bool)`



### skipSpace(body: []byte, i: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| i | int | - | - |

**Returns**: `int`



### isJSONSpace(c: byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | byte | - | - |

**Returns**: `bool`



### isJSONDelimiter(c: byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | byte | - | - |

**Returns**: `bool`



### NewToolSchemaAnnotations() → Compressor

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


