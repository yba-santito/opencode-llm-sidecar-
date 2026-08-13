# API Reference: prefix_stability_e2e_test.go

**Language**: Go

**Source**: `proxy/internal/store/prefix_stability_e2e_test.go`

---

## Classes

### e2eTransport

**Inherits from**: (none)



### e2eAuth

**Inherits from**: (none)



### e2eCreds

**Inherits from**: (none)



### e2eSink

**Inherits from**: (none)



### e2eCompressor

**Inherits from**: (none)



## Functions

### RoundTrip(r: *http.Request) → (*http.Response, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | *http.Request | - | - |

**Returns**: `(*http.Response, error)`



### e2eHandle(b: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |

**Returns**: `string`



### e2eConversation(userTexts: ...string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| userTexts | ...string | - | - |

**Returns**: `string`



### e2eServe(srv: *gateway.Server, body: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| srv | *gateway.Server | - | - |
| body | string | - | - |

**Returns**: (none)



### TestE2EPrefixStabilityWithRealStore(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


