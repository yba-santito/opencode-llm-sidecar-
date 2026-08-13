# API Reference: reasoning_effort.go

**Language**: Go

**Source**: `proxy/providers/openai/reasoning_effort.go`

---

## Functions

### reasoningEndpointKind(endpoint: string) → reasoningEndpoint

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| endpoint | string | - | - |

**Returns**: `reasoningEndpoint`



### applyReasoningEffort(root: map[string]any, endpoint: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]any | - | - |
| endpoint | string | - | - |

**Returns**: `bool`



### reasoningRequestShape(root: map[string]any, endpoint: reasoningEndpoint) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]any | - | - |
| endpoint | reasoningEndpoint | - | - |

**Returns**: `bool`



### supportsReasoningEffort(model: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `bool`



### supportsReasoningEffortForEndpoint(model: string, _: reasoningEndpoint) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |
| _ | reasoningEndpoint | - | - |

**Returns**: `bool`



### hasUnsupportedProReasoningEffort(model: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `bool`



### hasModelPrefix(unknown: model, prefix: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | model | - | - |
| prefix | string | - | - |

**Returns**: `bool`


