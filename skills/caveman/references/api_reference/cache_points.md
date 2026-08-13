# API Reference: cache_points.go

**Language**: Go

**Source**: `proxy/providers/bedrock/cache_points.go`

---

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



### CachePointEligibleModel(model: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `bool`



### bedrockCacheOptimizerEnabled(policy: providers.TransformPolicy) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| policy | providers.TransformPolicy | - | - |

**Returns**: `bool`



### containsCacheMarker(value: any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |

**Returns**: `bool`



### injectConverseCachePoint(root: map[string]any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]any | - | - |

**Returns**: `bool`



### injectAnthropicCacheControl(root: map[string]any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]any | - | - |

**Returns**: `bool`



### defaultCachePoint() → map[string]

**Returns**: `map[string]`



### ephemeralCacheControl() → map[string]

**Returns**: `map[string]`


