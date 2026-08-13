# API Reference: toon_decode.go

**Language**: Go

**Source**: `engine/compressors/toon_decode.go`

---

## Classes

### toonLine

**Inherits from**: (none)



## Functions

### DecodeTOON(in: []byte) → (any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| in | []byte | - | - |

**Returns**: `(any, bool)`



### DecodeJSONForTOONGrader(in: []byte) → (any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| in | []byte | - | - |

**Returns**: `(any, bool)`



### decodeTOON(in: []byte) → (any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| in | []byte | - | - |

**Returns**: `(any, bool)`



### scanTOONLines(s: string) → ([]toonLine, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `([]toonLine, bool)`



### parseTOONRoot(lines: []toonLine, i: int) → (any, int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lines | []toonLine | - | - |
| i | int | - | - |

**Returns**: `(any, int, bool)`



### parseTOONObject(lines: []toonLine, unknown: i, indent: int) → (map[string]any, int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lines | []toonLine | - | - |
| unknown | i | - | - |
| indent | int | - | - |

**Returns**: `(map[string]any, int, bool)`



### parseTOONArray(lines: []toonLine, unknown: i, indent: int) → ([]any, int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lines | []toonLine | - | - |
| unknown | i | - | - |
| indent | int | - | - |

**Returns**: `([]any, int, bool)`



### splitFields(s: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: (none)



### splitTOONCells(s: string, delimiter: byte) → ([]string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |
| delimiter | byte | - | - |

**Returns**: `([]string, bool)`



### parseTOONScalar(s: string) → (any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `(any, bool)`



### canonicalJSONValue(input: []byte) → (any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `(any, bool)`



### toonValueToAny(v: toonValue) → any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | toonValue | - | - |

**Returns**: `any`


