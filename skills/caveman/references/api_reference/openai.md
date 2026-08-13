# API Reference: openai.go

**Language**: Go

**Source**: `proxy/providers/openai/openai.go`

---

## Functions

### New(baseURL: string) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| baseURL | string | - | - |

**Returns**: `providers`



### InspectRequest(ctx: context.Context, body: providers.BodyReader, headers: http.Header) → (providers.RequestMetadata, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| body | providers.BodyReader | - | - |
| headers | http.Header | - | - |

**Returns**: `(providers.RequestMetadata, error)`


