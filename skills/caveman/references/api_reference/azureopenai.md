# API Reference: azureopenai.go

**Language**: Go

**Source**: `proxy/providers/azureopenai/azureopenai.go`

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



### New(baseURL: string) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| baseURL | string | - | - |

**Returns**: `providers`


