# API Reference: standalone_test.go

**Language**: Go

**Source**: `proxy/internal/standalone/standalone_test.go`

---

## Classes

### captureUpstreamTransport

**Inherits from**: (none)



### recordingSink

**Inherits from**: (none)



## Functions

### RoundTrip(r: *http.Request) → (*http.Response, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | *http.Request | - | - |

**Returns**: `(*http.Response, error)`



### TestStandaloneBoot_ZeroCloudDeps_InferredRows(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestStandaloneStripsSignedNativeSessionMarkerBeforeProviderAndCorrelatesRow(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestStandaloneUsesOnlyExplicitApproximateSessionFallback(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestStandaloneLeavesAmbiguousFallbackUncorrelated(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestStandaloneSSRF_BlocksPrivateUpstream(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestStandaloneProductionTransportPreservesEncodedResponseWireBytes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestEngineCompressor_StoreOriginalRoundTrip(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestEngineCompressor_QueryTargetedRetrieve(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestStandaloneCompressMode_RealEngine_Recoverable(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestStandaloneCompressMode_RealEngine_QueryAware(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestStandaloneSubscriptionCompress_NoAccountRequired(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### Record(rec: gateway.RequestRecord)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rec | gateway.RequestRecord | - | - |

**Returns**: (none)



### TestCreds_PassthroughThenBYOK(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBuildAdapters_RegistersNamedCompatBeforeLegacy(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBuildAdapters_DefaultCompatBareRoutePreservesConfiguredBase(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBuildAdapters_RegistersBedrockFromResolvedRegion(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCreds_NamedCompatEnvResolution(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestStandaloneGeminiGoogleEnvFallbackEndToEnd(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestStandaloneAzureAuthBoundariesEndToEnd(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCreds_BearerSchemeRecorded(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCreds_BedrockInboundThenEnvironment(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


