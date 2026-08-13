# API Reference: awssig.go

**Language**: Go

**Source**: `shared/platform/awssig/awssig.go`

---

## Classes

### Credentials

**Inherits from**: (none)



### Signer

**Inherits from**: (none)



### kv

**Inherits from**: (none)



## Functions

### Valid() → bool

**Returns**: `bool`



### Sign(req: *http.Request, creds: Credentials, payloadHash: string, now: time.Time) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | *http.Request | - | - |
| creds | Credentials | - | - |
| payloadHash | string | - | - |
| now | time.Time | - | - |

**Returns**: `error`



### HashPayload(body: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `string`



### UnsignedPayload() → string

**Returns**: `string`



### canonicalHeaderSet(req: *http.Request, host: string) → (canonical, signed string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | *http.Request | - | - |
| host | string | - | - |

**Returns**: `(canonical, signed string)`



### canonicalHeaderValue(value: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `string`



### canonicalURI(u: *url.URL) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| u | *url.URL | - | - |

**Returns**: `string`



### canonicalQuery(u: *url.URL) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| u | *url.URL | - | - |

**Returns**: `string`



### awsURIEncode(s: string, encodeSlash: bool) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |
| encodeSlash | bool | - | - |

**Returns**: `string`



### deriveSigningKey(unknown: secret, unknown: dateStamp, unknown: region, service: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | secret | - | - |
| unknown | dateStamp | - | - |
| unknown | region | - | - |
| service | string | - | - |

**Returns**: (none)



### hmacSHA256(unknown: key, data: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | key | - | - |
| data | []byte | - | - |

**Returns**: (none)



### hexSHA256(data: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |

**Returns**: `string`


