# API Reference: redact.go

**Language**: Go

**Source**: `shared/platform/redact/redact.go`

---

## Classes

### rule

**Inherits from**: (none)



## Functions

### replace(s: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `string`



### credentialAssignmentValueIsSecretShaped(match: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| match | []byte | - | - |

**Returns**: `bool`



### String(s: string) → (string, []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `(string, []string)`



### IsSensitiveHeader(name: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |

**Returns**: `bool`



### ScrubHeaders(h: http.Header) → http

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| h | http.Header | - | - |

**Returns**: `http`



### Error(err: error) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| err | error | - | - |

**Returns**: `string`



### SlogReplaceAttr(_: []string, attr: slog.Attr) → slog

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | []string | - | - |
| attr | slog.Attr | - | - |

**Returns**: `slog`


