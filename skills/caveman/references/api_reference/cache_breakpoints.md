# API Reference: cache_breakpoints.go

**Language**: Go

**Source**: `proxy/providers/anthropic/cache_breakpoints.go`

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



### injectBreakpointRaw(data: []byte, decoded: map[string]any) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| decoded | map[string]any | - | - |

**Returns**: `([]byte, bool)`



### containsJSONKey(value: any, key: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |
| key | string | - | - |

**Returns**: `bool`



### deferredTool(value: any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |

**Returns**: `bool`



### injectBreakpoint(root: map[string]any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]any | - | - |

**Returns**: `bool`



### ephemeral() → map[string]

**Returns**: `map[string]`


