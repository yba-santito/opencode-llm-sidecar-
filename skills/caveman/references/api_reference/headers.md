# API Reference: headers.go

**Language**: Go

**Source**: `proxy/internal/gateway/headers.go`

---

## Functions

### connectionTokens(headers: http.Header) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| headers | http.Header | - | - |

**Returns**: `map[string]`



### unsafeForwardHeader(name: string, nominated: map[string]struct{}) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |
| nominated | map[string]struct{} | - | - |

**Returns**: `bool`



### chatGPTRequestHeaders(headers: http.Header) → http

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| headers | http.Header | - | - |

**Returns**: `http`



### copySafeResponseHeaders(unknown: dst, src: http.Header)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | dst | - | - |
| src | http.Header | - | - |

**Returns**: (none)


