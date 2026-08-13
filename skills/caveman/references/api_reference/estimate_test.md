# API Reference: estimate_test.go

**Language**: Go

**Source**: `proxy/internal/gateway/estimate_test.go`

---

## Classes

### estimateStub

**Inherits from**: (none)



## Functions

### CompressSegment(seg: []byte) → ([]byte, int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| seg | []byte | - | - |

**Returns**: `([]byte, int, int)`



### StoreOriginal(body: []byte) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `(string, error)`



### EstimateSegment(seg: []byte) → (int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| seg | []byte | - | - |

**Returns**: `(int, int)`



### newObserveTestServer(t: *testing.T, upstream: string, sink: TelemetrySink, comp: Compressor)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| upstream | string | - | - |
| sink | TelemetrySink | - | - |
| comp | Compressor | - | - |

**Returns**: (none)



### TestObserveEstimateForwardsByteIdenticalAndRecordsWouldSave(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestObserveEstimateOffRecordsNothing(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


