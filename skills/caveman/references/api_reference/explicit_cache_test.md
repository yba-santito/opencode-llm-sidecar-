# API Reference: explicit_cache_test.go

**Language**: Go

**Source**: `proxy/providers/gemini/explicit_cache_test.go`

---

## Functions

### apply(t: *testing.T, body: string, policy: providers.TransformPolicy) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | string | - | - |
| policy | providers.TransformPolicy | - | - |

**Returns**: `providers`



### enabled() → providers

**Returns**: `providers`



### decode(t: *testing.T, b: []byte) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| b | []byte | - | - |

**Returns**: `map[string]`



### TestExplicitCache_RetiredFlagIsByteIdenticalAndUnattributed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestExplicitCache_DisabledIsPassThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestExplicitCache_RecordModePassThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestExplicitCache_IdempotentWhenAlreadyCached(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestExplicitCache_NoSystemInstructionPassThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestExplicitCache_GarbagePassThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


