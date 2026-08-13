# API Reference: signing.go

**Language**: Go

**Source**: `proxy/providers/bedrock/signing.go`

---

## Functions

### SanitizeAndMapHeaders(ctx: context.Context, req: *http.Request, credential: providers.Credential, upstream: *url.URL) → (http.Header, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| req | *http.Request | - | - |
| credential | providers.Credential | - | - |
| upstream | *url.URL | - | - |

**Returns**: `(http.Header, error)`



### requestPayloadHash(ctx: context.Context, req: *http.Request) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| req | *http.Request | - | - |

**Returns**: `(string, error)`



### credentialAuthKind(credential: providers.Credential) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| credential | providers.Credential | - | - |

**Returns**: `(string, error)`



### parseAWSCredentials(raw: string) → (awssig.Credentials, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | string | - | - |

**Returns**: `(awssig.Credentials, error)`



### copyIfPresent(unknown: dst, src: http.Header, name: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | dst | - | - |
| src | http.Header | - | - |
| name | string | - | - |

**Returns**: (none)


