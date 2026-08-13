# API Reference: session.go

**Language**: Go

**Source**: `browse/session.go`

---

## Classes

### Session

**Inherits from**: (none)



### Target

**Inherits from**: (none)



### ActionRequest

**Inherits from**: (none)



### ActionResult

**Inherits from**: (none)



### snapshotPayload

**Inherits from**: (none)



### discard

**Inherits from**: (none)



## Functions

### NewSession(eng: *engine.Engine, driver: Driver, log: *slog.Logger)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| eng | *engine.Engine | - | - |
| driver | Driver | - | - |
| log | *slog.Logger | - | - |

**Returns**: (none)



### Close() → error

**Returns**: `error`



### BrowserTools(s: *Session)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | *Session | - | - |

**Returns**: (none)



### snapshotTool(args: json.RawMessage) → mcp

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | json.RawMessage | - | - |

**Returns**: `mcp`



### snapshotTimeout(wait: time.Duration) → time

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| wait | time.Duration | - | - |

**Returns**: `time`



### targetsForHandle(handle: string) → (map[string]Target, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| handle | string | - | - |

**Returns**: `(map[string]Target, error)`



### finalizeSnapshotPayload(payload: snapshotPayload) → (snapshotPayload, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| payload | snapshotPayload | - | - |

**Returns**: `(snapshotPayload, string)`



### validateSnapshotArgs(rawURL: string, waitMS: float64, query: string) → (string, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rawURL | string | - | - |
| waitMS | float64 | - | - |
| query | string | - | - |

**Returns**: `(string, string)`



### replaceTargets(targets: map[string]Target)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| targets | map[string]Target | - | - |

**Returns**: (none)



### LoadTargets(targets: map[string]Target)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| targets | map[string]Target | - | - |

**Returns**: (none)



### TargetsSnapshot() → map[string]

**Returns**: `map[string]`



### actTool(args: json.RawMessage) → mcp

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | json.RawMessage | - | - |

**Returns**: `mcp`



### lookupTarget(uid: string) → (Target, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| uid | string | - | - |

**Returns**: `(Target, bool)`



### evalTool(args: json.RawMessage) → mcp

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | json.RawMessage | - | - |

**Returns**: `mcp`



### recoverTool(args: json.RawMessage) → mcp

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | json.RawMessage | - | - |

**Returns**: `mcp`


