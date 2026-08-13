# API Reference: engine_tools.go

**Language**: Go

**Source**: `mcp/engine_tools.go`

---

## Classes

### compressPayload

**Inherits from**: (none)



### statsPayload

**Inherits from**: (none)



### toonEncodePayload

**Inherits from**: (none)



### discard

**Inherits from**: (none)



### retrieveSession

**Inherits from**: (none)



## Functions

### EngineTools(eng: Engine, log: *slog.Logger)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| eng | Engine | - | - |
| log | *slog.Logger | - | - |

**Returns**: (none)



### compressTool(eng: Engine, log: *slog.Logger, args: json.RawMessage) → ToolResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| eng | Engine | - | - |
| log | *slog.Logger | - | - |
| args | json.RawMessage | - | - |

**Returns**: `ToolResult`



### compressResultPayload(res: engine.Result) → compressPayload

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| res | engine.Result | - | - |

**Returns**: `compressPayload`



### retrieveTool(eng: Engine, session: *retrieveSession, args: json.RawMessage) → ToolResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| eng | Engine | - | - |
| session | *retrieveSession | - | - |
| args | json.RawMessage | - | - |

**Returns**: `ToolResult`



### normalizeRecoveryHandle(handle: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| handle | string | - | - |

**Returns**: `string`



### toonEncodeTool(eng: Engine, log: *slog.Logger, args: json.RawMessage) → ToolResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| eng | Engine | - | - |
| log | *slog.Logger | - | - |
| args | json.RawMessage | - | - |

**Returns**: `ToolResult`



### toonDecodeTool(eng: Engine, args: json.RawMessage) → ToolResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| eng | Engine | - | - |
| args | json.RawMessage | - | - |

**Returns**: `ToolResult`



### statsTool(eng: Engine) → ToolResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| eng | Engine | - | - |

**Returns**: `ToolResult`



### newRetrieveSession()

**Returns**: (none)



### retrieveKey(unknown: handle, query: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | handle | - | - |
| query | string | - | - |

**Returns**: `string`



### alreadyServed(unknown: handle, query: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | handle | - | - |
| query | string | - | - |

**Returns**: `bool`



### shouldPayOutInFull() → bool

**Returns**: `bool`



### record(unknown: handle, query: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | handle | - | - |
| query | string | - | - |

**Returns**: (none)


