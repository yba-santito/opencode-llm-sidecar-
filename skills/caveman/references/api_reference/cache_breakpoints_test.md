# API Reference: cache_breakpoints_test.go

**Language**: Go

**Source**: `proxy/providers/anthropic/cache_breakpoints_test.go`

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



### decode(t: *testing.T, b: []byte) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| b | []byte | - | - |

**Returns**: `map[string]`



### TestCacheBreakpoint_ToolsGetBreakpoint(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCacheBreakpoint_SkipsDeferredTool(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCacheBreakpoint_AllDeferredToolsFallsBackToSystem(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCacheBreakpoint_SystemStringConverted(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCacheBreakpoint_SystemArrayLastBlock(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCacheBreakpoint_PreservesUntouchedRawBytes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCacheBreakpoint_SystemStringPreservesEscapeSpelling(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCacheBreakpoint_DisabledIsPassthrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCacheBreakpoint_NonPAYGIsPassthrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCacheBreakpoint_IdempotentAndRespectsExisting(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCacheBreakpoint_UnicodeEscapedCallerKeyCannotMintAttribution(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCacheBreakpoint_NoStablePrefixOrBadJSON(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


