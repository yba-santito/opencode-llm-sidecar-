# API Reference: azure_routing.go

**Language**: Go

**Source**: `proxy/providers/azureopenai/azure_routing.go`

---

## Functions

### ResolveUpstreamURL(ctx: context.Context, req: *http.Request, route: providers.RouteContext) → (*url.URL, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| req | *http.Request | - | - |
| route | providers.RouteContext | - | - |

**Returns**: `(*url.URL, error)`



### validateAzureRequest(u: *url.URL) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| u | *url.URL | - | - |

**Returns**: `error`



### foundryV1InferenceRoute(path: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `bool`



### legacyChatCompletionsRoute(path: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `bool`



### apiVersionAllowed(version: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| version | string | - | - |

**Returns**: `bool`



### allowlist()

**Returns**: (none)


