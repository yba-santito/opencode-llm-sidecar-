# API Reference: compression_query_test.go

**Language**: Go

**Source**: `proxy/internal/gateway/compression_query_test.go`

---

## Classes

### queryCaptureCompressor

**Inherits from**: (none)



## Functions

### TestExtractCompressionQuery(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestExtractCompressionQueryBoundsWorkWithoutBreakingUTF8(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### CompressSegmentQuery(segment: []byte, query: string) → ([]byte, int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| segment | []byte | - | - |
| query | string | - | - |

**Returns**: `([]byte, int, int)`



### EstimateSegmentQuery(segment: []byte, query: string) → (int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| segment | []byte | - | - |
| query | string | - | - |

**Returns**: `(int, int)`



### EstimateSegment(segment: []byte) → (int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| segment | []byte | - | - |

**Returns**: `(int, int)`



### TestCompressModePassesLatestUserQueryToEveryLiveSegment(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestObserveEstimateUsesSameLatestUserQuery(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### quoteJSON(value: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `string`


