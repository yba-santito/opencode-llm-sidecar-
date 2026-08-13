# API Reference: replay_http.go

**Language**: Go

**Source**: `cacheengine/cachebench/replay_http.go`

---

## Classes

### HTTPReplayCredentials

**Inherits from**: (none)



### HTTPReplayConfig

**Inherits from**: (none)



### HTTPReplayTransport

**Inherits from**: (none)



## Functions

### NewHTTPReplayTransport(config: HTTPReplayConfig) → (*HTTPReplayTransport, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| config | HTTPReplayConfig | - | - |

**Returns**: `(*HTTPReplayTransport, error)`



### Send(ctx: context.Context, outbound: ReplayOutbound) → (ReplayResponse, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| outbound | ReplayOutbound | - | - |

**Returns**: `(ReplayResponse, error)`



### endpoint(provider: string, outbound: ReplayOutbound) → (*url.URL, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| outbound | ReplayOutbound | - | - |

**Returns**: `(*url.URL, error)`



### authorize(unknown: provider, region: string, request: *http.Request, body: []byte) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| region | string | - | - |
| request | *http.Request | - | - |
| body | []byte | - | - |

**Returns**: `error`



### validateReplayBaseURL(raw: string, allowInsecureLoopback: bool) → (*url.URL, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | string | - | - |
| allowInsecureLoopback | bool | - | - |

**Returns**: `(*url.URL, error)`



### validReplaySecret(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### validAWSRegion(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### isLoopbackHost(host: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| host | string | - | - |

**Returns**: `bool`



### providerRequestID(header: http.Header) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| header | http.Header | - | - |

**Returns**: `string`


