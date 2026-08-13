# API Reference: server_test.go

**Language**: Go

**Source**: `proxy/internal/nativeruntime/server_test.go`

---

## Functions

### TestUnixServerConcurrentSessionsAndPermissions(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestServeConnRejectsOversizedRequestWithoutDecision(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestServeConnRuntimeErrorReturnsNoSyntheticDecision(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### callSocket(path: string, request: Request) → (Response, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| request | Request | - | - |

**Returns**: `(Response, error)`



### waitForSocket(t: *testing.T, path: string, done <-chan: error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| path | string | - | - |
| done <-chan | error | - | - |

**Returns**: (none)


