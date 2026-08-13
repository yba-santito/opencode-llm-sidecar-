# API Reference: capture_test.go

**Language**: Go

**Source**: `proxy/internal/gateway/capture_test.go`

---

## Functions

### readCaptures(t: *testing.T, dir: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| dir | string | - | - |

**Returns**: (none)



### verifyCaptureBody(t: *testing.T, unknown: name, side: string, body: []byte, size: int, sum: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | name | - | - |
| side | string | - | - |
| body | []byte | - | - |
| size | int | - | - |
| sum | string | - | - |

**Returns**: (none)



### captureProxyServer(mode: string, rt: *captureTransport)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| mode | string | - | - |
| rt | *captureTransport | - | - |

**Returns**: (none)



### serveCaptureRequest(t: *testing.T, srv: *Server, unknown: path, body: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| srv | *Server | - | - |
| unknown | path | - | - |
| body | string | - | - |

**Returns**: (none)



### TestBodyCaptureDisabledIsNilAndSafe(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBodyCaptureRecordsBothSidesWhenTransformed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBodyCaptureRoundTripsInvalidUTF8(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBodyCaptureOmitsDuplicateUpstreamButProvesEquality(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBodyCaptureOversizeBodyOmitsBytesButHashesWholeBody(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBodyCaptureStreamedBodyRecordsHashWithoutBytes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBodyCaptureSequencesEachRequest(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBodyCaptureConcurrentRecordsAreRaceFree(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSanitizeCaptureIDRejectsPathSeparators(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCaptureDisabledByDefaultWritesNothing(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCaptureEnabledLeavesUpstreamBytesIdentical(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCaptureThroughHandlerPreservesInvalidUTF8Bytes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCaptureRecordsRetryWithOriginalBytes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCaptureRecordsChatGPTRoute(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCaptureDirDeletedAtRecordTimeLeavesTrafficUnaffected(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


