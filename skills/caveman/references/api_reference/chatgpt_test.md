# API Reference: chatgpt_test.go

**Language**: Go

**Source**: `proxy/internal/gateway/chatgpt_test.go`

---

## Classes

### chatGPTRealEngineCompressor

**Inherits from**: (none)



## Functions

### CompressSegment(segment: []byte) → ([]byte, int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| segment | []byte | - | - |

**Returns**: `([]byte, int, int)`



### CompressSegmentQuery(segment: []byte, query: string) → ([]byte, int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| segment | []byte | - | - |
| query | string | - | - |

**Returns**: `([]byte, int, int)`



### StoreOriginal(body: []byte) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `(string, error)`



### chatgptTestServer(t: *testing.T, upstream: string) → (*Server, *captureSink, *bytes.Buffer)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| upstream | string | - | - |

**Returns**: `(*Server, *captureSink, *bytes.Buffer)`



### TestChatGPTPathAndQueryPreserved(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatGPTHeadersForwardedByteExactExceptHost(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatGPTSSEStreamsThroughAndMetersUsage(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatGPTCodexSubscriptionCompressesLiveZoneAndRecordsTokensOnly(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatGPTCodexSubscriptionCompressesOnlyExactResponsesRoute(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatGPTCompressionHonorsRequestWidePassThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatGPTCompressionHonorsCompiledPlanAndCacheEpochGates(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatGPTCodexSubscriptionRealEngineShrinksAndRecoversExactOriginal(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatGPTCodexSubscriptionTransformed4xxRetriesOriginal(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatGPTCaptureRecordsRetryWithOriginalBytes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatGPTMalformedBodyForwardedByteExactNothingInvented(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatGPTUpstreamUnreachableFailsWithCaveCode(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatGPTNoCredentialFallback(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


