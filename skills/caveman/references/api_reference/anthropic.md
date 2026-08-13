# API Reference: anthropic.go

**Language**: Go

**Source**: `proxy/providers/anthropic/anthropic.go`

---

## Classes

### Adapter

**Inherits from**: (none)



## Functions

### InspectRequest(ctx: context.Context, body: providers.BodyReader, headers: http.Header) → (providers.RequestMetadata, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| body | providers.BodyReader | - | - |
| headers | http.Header | - | - |

**Returns**: `(providers.RequestMetadata, error)`



### New(baseURL: string) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| baseURL | string | - | - |

**Returns**: `providers`


