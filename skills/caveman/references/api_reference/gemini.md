# API Reference: gemini.go

**Language**: Go

**Source**: `proxy/providers/gemini/gemini.go`

---

## Functions

### CompressionRoutePatterns()

**Returns**: (none)



### New(baseURL: string) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| baseURL | string | - | - |

**Returns**: `providers`



### MatchRoute(method: string, path: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| method | string | - | - |
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



### parseGeminiRoute(path: string) → (string, string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `(string, string, bool)`


