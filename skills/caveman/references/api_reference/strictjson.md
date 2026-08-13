# API Reference: strictjson.go

**Language**: Go

**Source**: `cacheengine/cachebench/strictjson.go`

---

## Functions

### validBoundedText(value: string, maximum: int, allowEmpty: bool) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |
| maximum | int | - | - |
| allowEmpty | bool | - | - |

**Returns**: `bool`



### validUniqueJSONObject(body: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `bool`



### validateUniqueJSONValue(decoder: *json.Decoder, root: bool, depth: int) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| decoder | *json.Decoder | - | - |
| root | bool | - | - |
| depth | int | - | - |

**Returns**: `error`


