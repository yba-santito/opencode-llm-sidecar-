# API Reference: trace.go

**Language**: Go

**Source**: `cacheengine/cachebench/trace.go`

---

## Classes

### agentMessage

**Inherits from**: (none)



### TraceReadLimits

**Inherits from**: (none)



## Functions

### GenerateTrace(provider: ProviderConfig, scenario: Scenario) → (Trace, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | ProviderConfig | - | - |
| scenario | Scenario | - | - |

**Returns**: `(Trace, error)`



### validateScenario(provider: ProviderConfig, scenario: Scenario) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | ProviderConfig | - | - |
| scenario | Scenario | - | - |

**Returns**: `error`



### nativeRequest(provider: ProviderConfig, scenario: Scenario, epoch: string, body: []byte) → cacheengine

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | ProviderConfig | - | - |
| scenario | Scenario | - | - |
| epoch | string | - | - |
| body | []byte | - | - |

**Returns**: `cacheengine`



### fixtureText(label: string, declaredTokens: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| label | string | - | - |
| declaredTokens | int | - | - |

**Returns**: `string`



### providerBody(provider: ProviderConfig, unknown: toolsText, systemText: string, history: []agentMessage) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | ProviderConfig | - | - |
| unknown | toolsText | - | - |
| systemText | string | - | - |
| history | []agentMessage | - | - |

**Returns**: `([]byte, error)`



### anthropicMessage(message: agentMessage) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| message | agentMessage | - | - |

**Returns**: `map[string]`



### openAIMessage(message: agentMessage) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| message | agentMessage | - | - |

**Returns**: `map[string]`



### bedrockMessage(message: agentMessage) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| message | agentMessage | - | - |

**Returns**: `map[string]`



### geminiMessage(message: agentMessage) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| message | agentMessage | - | - |

**Returns**: `map[string]`



### WriteTraceJSONL(writer: io.Writer, trace: Trace) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| writer | io.Writer | - | - |
| trace | Trace | - | - |

**Returns**: `error`



### DefaultTraceReadLimits() → TraceReadLimits

**Returns**: `TraceReadLimits`



### ReadTraceJSONL(reader: io.Reader) → ([]TraceRecord, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reader | io.Reader | - | - |

**Returns**: `([]TraceRecord, error)`



### ReadTraceJSONLWithLimits(reader: io.Reader, limits: TraceReadLimits) → ([]TraceRecord, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reader | io.Reader | - | - |
| limits | TraceReadLimits | - | - |

**Returns**: `([]TraceRecord, error)`



### NativeRequest() → (cacheengine.NativeRequest, error)

**Returns**: `(cacheengine.NativeRequest, error)`



### validTraceIdentity(record: TraceRecord) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| record | TraceRecord | - | - |

**Returns**: `bool`



### requestBudgetMatchesBody(record: TraceRecord) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| record | TraceRecord | - | - |

**Returns**: `bool`



### validTimingBasis(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### bodyDigest(body: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `string`


