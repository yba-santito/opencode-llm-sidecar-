# API Reference: adapter_usage_test.go

**Language**: Go

**Source**: `proxy/providers/adapter_usage_test.go`

---

## Functions

### TestParseUsageBytes_NonStream(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_Stream(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_GeminiStreamingJSONArray(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_GeminiNestedToolFinishReasonIsNotTerminal(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_ExplicitNullCountersAreMalformed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUsagePricingQualifiersAndTerminalProof(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestProviderNoChargeAndFilteredOutputSemantics(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_NormalizesProviderSemantics(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_MalformedCountersFailClosed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_MissingAndPartialUsage(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_AnthropicCacheCreationTTLBreakdown(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUsageScanner_TeeAndStatus(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCacheStatus(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUsageScanner_Truncation(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUsageScanner_DecodesSupportedSideCopyWithoutChangingWireBytes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUsageScanner_CorruptSupportedEncodingIsExplicitlyUnpriced(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUsageScanner_DecodedSideCopyHonorsScanLimit(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUsageScanner_StackedEncodingIsExplicitlyUnpriced(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### compressUsagePayload(t: *testing.T, encoding: string, body: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| encoding | string | - | - |
| body | []byte | - | - |

**Returns**: (none)



### TestUsageScanner_UnsupportedEncodingIsExplicitlyUnpriced(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUsageScanner_RecoversCompleteTerminalUsageFromBoundedTail(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_LargeSingleLine(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### assertUsage(t: *testing.T, u: UsageObservation, unknown: in, unknown: out, unknown: cached, unknown: cacheCreate, reasoning: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| u | UsageObservation | - | - |
| unknown | in | - | - |
| unknown | out | - | - |
| unknown | cached | - | - |
| unknown | cacheCreate | - | - |
| reasoning | int | - | - |

**Returns**: (none)


