# API Reference: prefix_stability_openai_e2e_test.go

**Language**: Go

**Source**: `proxy/internal/store/prefix_stability_openai_e2e_test.go`

---

## Classes

### e2eChatTransport

**Inherits from**: (none)



### e2eChatCreds

**Inherits from**: (none)



### e2eNonceCompressor

**Inherits from**: (none)



## Functions

### RoundTrip(r: *http.Request) → (*http.Response, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | *http.Request | - | - |

**Returns**: `(*http.Response, error)`



### CompressSegment(seg: []byte) → ([]byte, int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| seg | []byte | - | - |

**Returns**: `([]byte, int, int)`



### StoreOriginal(b: []byte) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |

**Returns**: `(string, error)`



### e2eChatConversation(userTexts: ...string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| userTexts | ...string | - | - |

**Returns**: `string`



### newChatServer(st: gateway.PrefixCache, comp: gateway.Compressor, rt: *e2eChatTransport)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| st | gateway.PrefixCache | - | - |
| comp | gateway.Compressor | - | - |
| rt | *e2eChatTransport | - | - |

**Returns**: (none)



### serveChat(srv: *gateway.Server, body: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| srv | *gateway.Server | - | - |
| body | string | - | - |

**Returns**: (none)



### TestE2EOpenAIPrefixStabilityAcrossRestart(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestE2EOpenAIPrefixStabilityUnderConcurrency(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


