# API Reference: standalone.go

**Language**: Go

**Source**: `proxy/internal/standalone/standalone.go`

---

## Classes

### Auth

**Inherits from**: (none)



### Creds

**Inherits from**: (none)



### Options

**Inherits from**: (none)



### engineCompressor

**Inherits from**: (none)



## Functions

### Authenticate(ctx: context.Context, r: *http.Request) → (gateway.RequestContext, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| r | *http.Request | - | - |

**Returns**: `(gateway.RequestContext, error)`



### Resolve(provider: string, r: *http.Request) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| r | *http.Request | - | - |

**Returns**: `providers`



### authFallbackEnv(provider: string, r: *http.Request) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| r | *http.Request | - | - |

**Returns**: `string`



### compatNameFromPath(path: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `string`



### bearerKey(raw: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | string | - | - |

**Returns**: `string`



### New(cfg: config.Config, sink: gateway.TelemetrySink, opts: Options)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | config.Config | - | - |
| sink | gateway.TelemetrySink | - | - |
| opts | Options | - | - |

**Returns**: (none)



### NewEngineCompressor(store: *ccr.Store) → gateway

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| store | *ccr.Store | - | - |

**Returns**: `gateway`



### NewEstimateCompressor() → gateway

**Returns**: `gateway`



### CompressSegment(segment: []byte) → ([]byte, int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| segment | []byte | - | - |

**Returns**: `([]byte, int, int)`



### CompressSegmentType(segment: []byte, contentType: string) → ([]byte, int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| segment | []byte | - | - |
| contentType | string | - | - |

**Returns**: `([]byte, int, int)`



### CompressSegmentQuery(segment: []byte, query: string) → ([]byte, int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| segment | []byte | - | - |
| query | string | - | - |

**Returns**: `([]byte, int, int)`



### EstimateSegment(segment: []byte) → (int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| segment | []byte | - | - |

**Returns**: `(int, int)`



### EstimateSegmentQuery(segment: []byte, query: string) → (int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| segment | []byte | - | - |
| query | string | - | - |

**Returns**: `(int, int)`



### StripToolSchema(tools: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tools | []byte | - | - |

**Returns**: `([]byte, bool)`



### StoreOriginal(body: []byte) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `(string, error)`



### RetrieveOriginal(unknown: handle, query: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | handle | - | - |
| query | string | - | - |

**Returns**: `([]byte, error)`



### buildAdapters(cfg: config.Config)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | config.Config | - | - |

**Returns**: (none)



### StandaloneHTTPClient(timeout: time.Duration)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| timeout | time.Duration | - | - |

**Returns**: (none)


