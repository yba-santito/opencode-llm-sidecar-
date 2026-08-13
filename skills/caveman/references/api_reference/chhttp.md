# API Reference: chhttp.go

**Language**: Go

**Source**: `shared/platform/chhttp/chhttp.go`

---

## Classes

### errTransport

**Inherits from**: (none)



## Functions

### ReadBodyBounded(r: io.Reader, maxBytes: int64) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | io.Reader | - | - |
| maxBytes | int64 | - | - |

**Returns**: `([]byte, error)`



### InsertTimeout() → time

**Returns**: `time`



### QueryTimeout() → time

**Returns**: `time`



### clampMS(unknown: ms, defMS: int) → time

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | ms | - | - |
| defMS | int | - | - |

**Returns**: `time`



### production() → bool

**Returns**: `bool`



### tlsClientConfig() → (*tls.Config, error)

**Returns**: `(*tls.Config, error)`



### rootsWithCAFile(path: string) → (*x509.CertPool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `(*x509.CertPool, error)`



### RoundTrip(unknown: *http.Request) → (*http.Response, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | *http.Request | - | - |

**Returns**: `(*http.Response, error)`



### newQueryTransport() → (*http.Transport, error)

**Returns**: `(*http.Transport, error)`



### applyTLS(t: *http.Transport, cfg: *tls.Config)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *http.Transport | - | - |
| cfg | *tls.Config | - | - |

**Returns**: (none)



### newInsertTransport() → (http.RoundTripper, error)

**Returns**: `(http.RoundTripper, error)`



### NewInsertClient()

**Returns**: (none)



### NewQueryClient()

**Returns**: (none)



### ValidateProduction(logger: *slog.Logger) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| logger | *slog.Logger | - | - |

**Returns**: `error`


