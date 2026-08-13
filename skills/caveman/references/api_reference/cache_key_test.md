# API Reference: cache_key_test.go

**Language**: Go

**Source**: `proxy/providers/openai/cache_key_test.go`

---

## Functions

### enabled() → providers

**Returns**: `providers`



### apply(t: *testing.T, body: string, policy: providers.TransformPolicy) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | string | - | - |
| policy | providers.TransformPolicy | - | - |

**Returns**: `providers`



### applyAtEndpoint(t: *testing.T, unknown: body, endpoint: string, policy: providers.TransformPolicy) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | body | - | - |
| endpoint | string | - | - |
| policy | providers.TransformPolicy | - | - |

**Returns**: `providers`



### decode(t: *testing.T, b: []byte) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| b | []byte | - | - |

**Returns**: `map[string]`



### TestPromptCacheKey_ToolsGetKey(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPromptCacheKey_SystemMessageGetsKey(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPromptCacheKey_InstructionsGetKey(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPromptCacheKey_StableAcrossWhitespaceAndKeyOrder(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPromptCacheKey_DistinctPrefixesDistinctKeys(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPromptCacheKey_DisabledIsPassthrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPromptCacheKey_RespectsExistingKey(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPromptCacheKey_NoStablePrefixOrBadJSON(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPromptCacheKey_Idempotent(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPromptCacheKey_PreservesOriginalRawBytes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### assertOnlyKeyAdded(t: *testing.T, original: string, result: map[string]any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| original | string | - | - |
| result | map[string]any | - | - |

**Returns**: (none)


