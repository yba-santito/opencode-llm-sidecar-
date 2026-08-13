# API Reference: chatgpt.go

**Language**: Go

**Source**: `proxy/internal/gateway/chatgpt.go`

---

## Classes

### eofTrackingReader

**Inherits from**: (none)



### cappedBuffer

**Inherits from**: (none)



## Functions

### chatgpt(w: http.ResponseWriter, r: *http.Request)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| w | http.ResponseWriter | - | - |
| r | *http.Request | - | - |

**Returns**: (none)



### transformedChatGPTHash(raw: []byte, transformed: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |
| transformed | []byte | - | - |

**Returns**: (none)



### streamThrough(w: http.ResponseWriter, body: io.Reader) → (int64, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| w | http.ResponseWriter | - | - |
| body | io.Reader | - | - |

**Returns**: `(int64, bool)`



### recordChatGPT(rc: RequestContext, r: *http.Request, unknown: requestID, unknown: traceID, endpoint: string, start: time.Time, status: int, errCode: string, reqCapture: *cappedBuffer, unknown: reqHash, transformedHash: []byte, requestHashComplete: bool, respCapture: *cappedBuffer, respBytes: int64, stream: bool, optimizers: []string, comp: *compressionOutcome)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rc | RequestContext | - | - |
| r | *http.Request | - | - |
| unknown | requestID | - | - |
| unknown | traceID | - | - |
| endpoint | string | - | - |
| start | time.Time | - | - |
| status | int | - | - |
| errCode | string | - | - |
| reqCapture | *cappedBuffer | - | - |
| unknown | reqHash | - | - |
| transformedHash | []byte | - | - |
| requestHashComplete | bool | - | - |
| respCapture | *cappedBuffer | - | - |
| respBytes | int64 | - | - |
| stream | bool | - | - |
| optimizers | []string | - | - |
| comp | *compressionOutcome | - | - |

**Returns**: (none)



### Read(p: []byte) → (int, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | []byte | - | - |

**Returns**: `(int, error)`



### chatGPTRequestHashComplete(fullyRead: bool, contentLength: int64, capture: *cappedBuffer, tracker: *eofTrackingReader) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fullyRead | bool | - | - |
| contentLength | int64 | - | - |
| capture | *cappedBuffer | - | - |
| tracker | *eofTrackingReader | - | - |

**Returns**: `bool`



### Write(p: []byte) → (int, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | []byte | - | - |

**Returns**: `(int, error)`


