# API Reference: cache_points_test.go

**Language**: Go

**Source**: `proxy/providers/bedrock/cache_points_test.go`

---

## Functions

### cachePointsEnabled() → providers

**Returns**: `providers`



### applyCachePoints(t: *testing.T, body: string, meta: providers.RequestMetadata, policy: providers.TransformPolicy) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | string | - | - |
| meta | providers.RequestMetadata | - | - |
| policy | providers.TransformPolicy | - | - |

**Returns**: `providers`



### decodeCachePointBody(t: *testing.T, body: []byte) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | []byte | - | - |

**Returns**: `map[string]`



### TestCachePointsConverseAddsToolCheckpointUpstreamOnly(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCachePointsConverseFallsBackToSystemCheckpoint(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCachePointsAnthropicInvokeAddsCacheControl(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCachePointsUnsupportedVendorAndSurfaceAreByteIdentical(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCachePointsRespectCallerMarkersByteIdentically(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCachePointsDisabledNonPAYGAndMalformedPassThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCachePointsSigV4HashesExactTransformedWireBody(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCachePointEligibilityCoversInferenceProfiles(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCachePointsInjectsForGlobalInferenceProfile(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


