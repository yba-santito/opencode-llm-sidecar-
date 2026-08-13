# API Reference: auth_fallback.go

**Language**: Go

**Source**: `proxy/internal/gateway/auth_fallback.go`

---

## Functions

### applyUpstreamAuthFallback(provider: string, credential: providers.Credential, headers: http.Header)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| credential | providers.Credential | - | - |
| headers | http.Header | - | - |

**Returns**: (none)



### fallbackKey(provider: string, credential: providers.Credential, headers: http.Header) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| credential | providers.Credential | - | - |
| headers | http.Header | - | - |

**Returns**: `(string, bool)`



### firstEnv(names: ...string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| names | ...string | - | - |

**Returns**: `string`



### hasUsableAuthorization(headers: http.Header) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| headers | http.Header | - | - |

**Returns**: `bool`



### hasUsableProviderKey(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### isPlaceholderProviderKey(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### isPlaceholderAuthorization(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`


