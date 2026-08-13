# API Reference: protocol.go

**Language**: Go

**Source**: `mcp/protocol.go`

---

## Classes

### rpcRequest

**Inherits from**: (none)



### rpcResponse

**Inherits from**: (none)



### rpcError

**Inherits from**: (none)



### ToolResult

**Inherits from**: (none)



### ToolContent

**Inherits from**: (none)



## Functions

### isNotification(id: json.RawMessage) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | json.RawMessage | - | - |

**Returns**: `bool`



### successResponse(id: json.RawMessage, result: any) → rpcResponse

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | json.RawMessage | - | - |
| result | any | - | - |

**Returns**: `rpcResponse`



### errorResponse(id: json.RawMessage, code: int, msg: string) → rpcResponse

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | json.RawMessage | - | - |
| code | int | - | - |
| msg | string | - | - |

**Returns**: `rpcResponse`



### ToolText(v: any) → ToolResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `ToolResult`



### ToolRawText(s: string) → ToolResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `ToolResult`



### ToolError(unknown: code, msg: string) → ToolResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | code | - | - |
| msg | string | - | - |

**Returns**: `ToolResult`



### ObjectSchema(props: map[string]any, required: ...string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| props | map[string]any | - | - |
| required | ...string | - | - |

**Returns**: `map[string]`



### StringProp(description: string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| description | string | - | - |

**Returns**: `map[string]`


