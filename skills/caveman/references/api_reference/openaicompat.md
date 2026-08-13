# API Reference: openaicompat.go

**Language**: Go

**Source**: `proxy/providers/openaicompat/openaicompat.go`

---

## Classes

### Adapter

**Inherits from**: (none)



### namedAdapter

**Inherits from**: (none)



## Functions

### New(baseURL: string) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| baseURL | string | - | - |

**Returns**: `providers`



### MatchRoute(unknown: method, path: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | method | - | - |
| path | string | - | - |

**Returns**: `bool`



### ResolveUpstreamURL(_: context.Context, req: *http.Request, route: providers.RouteContext) → (*url.URL, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| req | *http.Request | - | - |
| route | providers.RouteContext | - | - |

**Returns**: `(*url.URL, error)`



### joinCompatPath(unknown: basePath, requestPath: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | basePath | - | - |
| requestPath | string | - | - |

**Returns**: `string`



### splitCompatPath(path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: (none)



### hasCompatPrefix(unknown: path, prefix: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | path | - | - |
| prefix | string | - | - |

**Returns**: `bool`



### joinCompatQuery(unknown: baseQuery, requestQuery: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | baseQuery | - | - |
| requestQuery | string | - | - |

**Returns**: `string`



### InspectRequest(ctx: context.Context, body: providers.BodyReader, headers: http.Header) → (providers.RequestMetadata, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| body | providers.BodyReader | - | - |
| headers | http.Header | - | - |

**Returns**: `(providers.RequestMetadata, error)`



### ExtractCompressible(body: []byte, meta: providers.RequestMetadata) → ([][]byte, func([][]byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |

**Returns**: `([][]byte, func([][]byte)`



### ExtractStabilizable(body: []byte, meta: providers.RequestMetadata) → ([]providers.RewritableBlock, func([][]byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |

**Returns**: `([]providers.RewritableBlock, func([][]byte)`



### ExtractCompressible(body: []byte, meta: providers.RequestMetadata) → ([][]byte, func([][]byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |

**Returns**: `([][]byte, func([][]byte)`



### ExtractStabilizable(body: []byte, meta: providers.RequestMetadata) → ([]providers.RewritableBlock, func([][]byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |

**Returns**: `([]providers.RewritableBlock, func([][]byte)`



### MatchRoute(unknown: method, path: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | method | - | - |
| path | string | - | - |

**Returns**: `bool`



### InspectRequest(ctx: context.Context, body: providers.BodyReader, headers: http.Header) → (providers.RequestMetadata, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| body | providers.BodyReader | - | - |
| headers | http.Header | - | - |

**Returns**: `(providers.RequestMetadata, error)`



### inspectOpenAICompatible(ctx: context.Context, base: providers.Base, body: providers.BodyReader, headers: http.Header) → (providers.RequestMetadata, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| base | providers.Base | - | - |
| body | providers.BodyReader | - | - |
| headers | http.Header | - | - |

**Returns**: `(providers.RequestMetadata, error)`



### NewNamed(unknown: name, baseURL: string) → (providers.Adapter, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | name | - | - |
| baseURL | string | - | - |

**Returns**: `(providers.Adapter, error)`



### ValidateName(name: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |

**Returns**: `error`



### ValidateBaseURL(raw: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | string | - | - |

**Returns**: `error`



### ResolveUpstreamURL(_: context.Context, req: *http.Request, _: providers.RouteContext) → (*url.URL, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| req | *http.Request | - | - |
| _ | providers.RouteContext | - | - |

**Returns**: `(*url.URL, error)`



### ValidateRequestPath(u: *url.URL) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| u | *url.URL | - | - |

**Returns**: `error`



### validateCompatPath(unknown: path, rawPath: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | path | - | - |
| rawPath | string | - | - |

**Returns**: `error`



### validatePathComponents(unknown: path, rawPath: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | path | - | - |
| rawPath | string | - | - |

**Returns**: `error`



### parseBaseURL(unknown: raw, provider: string) → (*url.URL, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | raw | - | - |
| provider | string | - | - |

**Returns**: `(*url.URL, error)`


