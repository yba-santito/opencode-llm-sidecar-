# API Reference: adapter_raw_usage_test.go

**Language**: Go

**Source**: `proxy/providers/adapter_raw_usage_test.go`

---

## Functions

### decodeRaw(t: *testing.T, raw: json.RawMessage) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| raw | json.RawMessage | - | - |

**Returns**: `map[string]`



### TestParseUsageBytes_RawUsageNonStream(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_RawUsageStreamCapturesTerminalChunk(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_RawUsageAbsentWhenNoUsageReported(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_RawUsageMergesAnthropicSplitAcrossChunks(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_RawUsageAgreesWithTypedCountersOnNonMonotonicStream(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_TruncatedStreamStampsRawUsageIncomplete(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_CompleteStreamIsNotStampedIncomplete(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseUsageBytes_RawUsageNullDoesNotEraseEarlierValue(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


