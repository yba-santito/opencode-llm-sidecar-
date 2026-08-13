# API Reference: authmode.go

**Language**: Go

**Source**: `proxy/internal/gateway/authmode.go`

---

## Functions

### ClassifyAuthMode(h: http.Header) → AuthMode

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| h | http.Header | - | - |

**Returns**: `AuthMode`



### ClassifyResolvedAuthMode(h: http.Header, credential: providers.Credential) → AuthMode

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| h | http.Header | - | - |
| credential | providers.Credential | - | - |

**Returns**: `AuthMode`



### classifyHeaderAuthMode(h: http.Header) → (AuthMode, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| h | http.Header | - | - |

**Returns**: `(AuthMode, bool)`



### classifyCredential(credential: providers.Credential) → AuthMode

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| credential | providers.Credential | - | - |

**Returns**: `AuthMode`



### classifyCredentialAuthKind(credential: providers.Credential) → (AuthMode, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| credential | providers.Credential | - | - |

**Returns**: `(AuthMode, bool)`


