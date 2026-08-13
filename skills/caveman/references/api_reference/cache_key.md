# API Reference: cache_key.go

**Language**: Go

**Source**: `proxy/providers/openai/cache_key.go`

---

## Classes

### Adapter

**Inherits from**: (none)



## Functions

### ApplyProviderNativeTransforms(ctx: context.Context, body: providers.BodyReader, meta: providers.RequestMetadata, policy: providers.TransformPolicy) → (providers.TransformResult, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| body | providers.BodyReader | - | - |
| meta | providers.RequestMetadata | - | - |
| policy | providers.TransformPolicy | - | - |

**Returns**: `(providers.TransformResult, error)`



### spliceTopLevelFields(data: []byte, root: map[string]any, ids: []string, endpoint: string) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| root | map[string]any | - | - |
| ids | []string | - | - |
| endpoint | string | - | - |

**Returns**: `([]byte, bool)`



### applyPromptCacheKey(root: map[string]any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]any | - | - |

**Returns**: `bool`



### prefixSignature(root: map[string]any) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]any | - | - |

**Returns**: `([]byte, bool)`


