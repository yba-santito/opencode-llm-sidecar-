# API Reference: httpx.go

**Language**: Go

**Source**: `shared/platform/httpx/httpx.go`

---

## Classes

### ErrorEnvelope

**Inherits from**: (none)



### ErrorBody

**Inherits from**: (none)



## Functions

### RequestID(r: *http.Request) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | *http.Request | - | - |

**Returns**: `string`



### JSON(w: http.ResponseWriter, status: int, body: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| w | http.ResponseWriter | - | - |
| status | int | - | - |
| body | any | - | - |

**Returns**: (none)



### Error(w: http.ResponseWriter, r: *http.Request, status: int, unknown: code, message: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| w | http.ResponseWriter | - | - |
| r | *http.Request | - | - |
| status | int | - | - |
| unknown | code | - | - |
| message | string | - | - |

**Returns**: (none)



### ErrorWithDetails(w: http.ResponseWriter, r: *http.Request, status: int, unknown: code, message: string, details: map[string]any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| w | http.ResponseWriter | - | - |
| r | *http.Request | - | - |
| status | int | - | - |
| unknown | code | - | - |
| message | string | - | - |
| details | map[string]any | - | - |

**Returns**: (none)



### publicServerErrorMessage(status: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| status | int | - | - |

**Returns**: `string`



### DecodeJSON(r: *http.Request, dst: any, maxBytes: int64) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | *http.Request | - | - |
| dst | any | - | - |
| maxBytes | int64 | - | - |

**Returns**: `error`


