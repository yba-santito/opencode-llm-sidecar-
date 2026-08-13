# API Reference: automatic_cache_test.go

**Language**: Go

**Source**: `proxy/providers/anthropic/automatic_cache_test.go`

---

## Functions

### automaticPolicy(ids: ...string) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ids | ...string | - | - |

**Returns**: `providers`



### applyAutomatic(t: *testing.T, body: string, meta: providers.RequestMetadata, policy: providers.TransformPolicy) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | string | - | - |
| meta | providers.RequestMetadata | - | - |
| policy | providers.TransformPolicy | - | - |

**Returns**: `providers`



### TestAutomaticPromptCacheAddsOnlyTopLevelFiveMinuteMarker(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAutomaticPromptCacheConflictsPassThroughByteIdentically(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAutomaticPromptCacheDoesNotGuessModelTokenThreshold(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAnthropicCacheStrategiesRecordModeAreByteIdentical(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


