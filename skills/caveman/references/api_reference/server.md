# API Reference: server.go

**Language**: Go

**Source**: `proxy/internal/gateway/server.go`

---

## Classes

### RequestContext

**Inherits from**: (none)



### RequestRecord

**Inherits from**: (none)



### Server

**Inherits from**: (none)



### Config

**Inherits from**: (none)



## Functions

### liveZoneCompressionAllowed(adapter: providers.Adapter) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |

**Returns**: `bool`



### prefixStabilized(adapter: providers.Adapter) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |

**Returns**: `bool`



### New(cfg: Config)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | Config | - | - |

**Returns**: (none)



### Handler() → http

**Returns**: `http`



### health(w: http.ResponseWriter, r: *http.Request)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| w | http.ResponseWriter | - | - |
| r | *http.Request | - | - |

**Returns**: (none)



### metrics(w: http.ResponseWriter, r: *http.Request)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| w | http.ResponseWriter | - | - |
| r | *http.Request | - | - |

**Returns**: (none)



### itoa(n: int64) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int64 | - | - |

**Returns**: `string`


