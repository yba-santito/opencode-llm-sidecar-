# API Reference: toon_encode.go

**Language**: Go

**Source**: `engine/compressors/toon_encode.go`

---

## Classes

### toonValue

**Inherits from**: (none)



### toonField

**Inherits from**: (none)



### EncodeOptions

**Inherits from**: (none)



## Functions

### encodeTOON(v: any, opt: EncodeOptions) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |
| opt | EncodeOptions | - | - |

**Returns**: `([]byte, bool)`



### asTOONValue(v: any) → (toonValue, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `(toonValue, bool)`



### parseJSONTOON(input: []byte) → (toonValue, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `(toonValue, bool)`



### readJSONTOONValue(dec: *json.Decoder) → (toonValue, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| dec | *json.Decoder | - | - |

**Returns**: `(toonValue, error)`



### writeTOONValue(b: *strings.Builder, v: toonValue, name: string, indent: int, opt: EncodeOptions) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | *strings.Builder | - | - |
| v | toonValue | - | - |
| name | string | - | - |
| indent | int | - | - |
| opt | EncodeOptions | - | - |

**Returns**: `bool`



### writeTOONObject(b: *strings.Builder, fields: []toonField, indent: int, opt: EncodeOptions) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | *strings.Builder | - | - |
| fields | []toonField | - | - |
| indent | int | - | - |
| opt | EncodeOptions | - | - |

**Returns**: `bool`



### writeTOONArray(b: *strings.Builder, name: string, arr: []toonValue, indent: int, opt: EncodeOptions) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | *strings.Builder | - | - |
| name | string | - | - |
| arr | []toonValue | - | - |
| indent | int | - | - |
| opt | EncodeOptions | - | - |

**Returns**: `bool`



### scalarArray(arr: []toonValue) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| arr | []toonValue | - | - |

**Returns**: `bool`



### tabularRows(arr: []toonValue, delimiter: byte) → ([]string, [][]string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| arr | []toonValue | - | - |
| delimiter | byte | - | - |

**Returns**: `([]string, [][]string, bool)`



### isScalar(v: toonValue) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | toonValue | - | - |

**Returns**: `bool`



### encodeTOONScalar(v: toonValue, delimiter: byte) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | toonValue | - | - |
| delimiter | byte | - | - |

**Returns**: `(string, bool)`



### needsTOONQuote(s: string, delimiter: byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |
| delimiter | byte | - | - |

**Returns**: `bool`



### validJSONNumber(s: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `bool`



### safeTOONKey(k: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| k | string | - | - |

**Returns**: `bool`



### writeIndent(b: *strings.Builder, indent: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | *strings.Builder | - | - |
| indent | int | - | - |

**Returns**: (none)



### normalizeDecodedJSON(v: any) → any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `any`


