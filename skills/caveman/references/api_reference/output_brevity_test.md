# API Reference: output_brevity_test.go

**Language**: Go

**Source**: `proxy/providers/openai/output_brevity_test.go`

---

## Functions

### brevityPolicy(unknown: flag, gate: bool) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | flag | - | - |
| gate | bool | - | - |

**Returns**: `providers`



### TestBrevity_RequiresBothFlagAndEvalGate(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBrevity_RecordModePassThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBrevity_RespectsCallerCap(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBrevity_ChatCompletionsUsesMaxCompletionTokens(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBrevity_ComposesWithCacheKey(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


