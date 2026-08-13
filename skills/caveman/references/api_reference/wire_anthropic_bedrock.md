# API Reference: wire_anthropic_bedrock.go

**Language**: Go

**Source**: `cacheengine/wire_anthropic_bedrock.go`

---

## Functions

### applyAnthropicStable(body: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `([]byte, bool)`



### anthropicDeferredTool(value: any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |

**Returns**: `bool`



### applyBedrockStable(body: []byte, endpoint: string) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| endpoint | string | - | - |

**Returns**: `([]byte, bool)`



### injectBedrockConverseStable(root: map[string]any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]any | - | - |

**Returns**: `bool`



### injectBedrockInvokeStable(root: map[string]any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]any | - | - |

**Returns**: `bool`


