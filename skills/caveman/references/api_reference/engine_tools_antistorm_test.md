# API Reference: engine_tools_antistorm_test.go

**Language**: Go

**Source**: `mcp/engine_tools_antistorm_test.go`

---

## Classes

### storeEngine

**Inherits from**: (none)



## Functions

### Compress(unknown: []byte, unknown: engine.Options) → (engine.Result, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | []byte | - | - |
| unknown | engine.Options | - | - |

**Returns**: `(engine.Result, error)`



### Retrieve(handle: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| handle | string | - | - |

**Returns**: `([]byte, error)`



### RetrieveQuery(unknown: handle, query: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | handle | - | - |
| query | string | - | - |

**Returns**: `([]byte, error)`



### Stats() → (ccr.Stats, error)

**Returns**: `(ccr.Stats, error)`



### EncodeTOON(in: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| in | []byte | - | - |

**Returns**: `([]byte, error)`



### DecodeTOON(in: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| in | []byte | - | - |

**Returns**: `([]byte, error)`



### newStoreEngine()

**Returns**: (none)



### retrieveArgs(unknown: handle, query: string) → json

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | handle | - | - |
| query | string | - | - |

**Returns**: `json`



### resultText(t: *testing.T, r: ToolResult) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| r | ToolResult | - | - |

**Returns**: `string`



### TestRepeatedRetrieveIsAnsweredWithAPointer(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRetrieveStormPaysOutInFull(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRetrieveWithoutASessionBehavesAsBefore(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAntiStormNeverWithholdsUnseenContent(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


