# API Reference: provider.go

**Language**: Go

**Source**: `rewriter/provider.go`

---

## Classes

### completion

**Inherits from**: (none)



## Functions

### complete(ctx: context.Context, user: string, maxOutput: int) → (completion, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| user | string | - | - |
| maxOutput | int | - | - |

**Returns**: `(completion, error)`



### completeAnthropic(ctx: context.Context, user: string, maxOutput: int) → (completion, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| user | string | - | - |
| maxOutput | int | - | - |

**Returns**: `(completion, error)`



### completeOpenAI(ctx: context.Context, user: string, maxOutput: int) → (completion, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| user | string | - | - |
| maxOutput | int | - | - |

**Returns**: `(completion, error)`



### openAIAcceptsTemperature(model: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `bool`



### do(ctx: context.Context, endpoint: string, body: map[string]any, headers: map[string]string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| endpoint | string | - | - |
| body | map[string]any | - | - |
| headers | map[string]string | - | - |

**Returns**: `([]byte, error)`


