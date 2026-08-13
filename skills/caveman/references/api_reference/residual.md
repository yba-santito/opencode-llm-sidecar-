# API Reference: residual.go

**Language**: Go

**Source**: `shared/platform/redact/residual.go`

---

## Functions

### ResidualRisk(body: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: (none)



### screenBytes(scan: []byte, found: map[string]bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| scan | []byte | - | - |
| found | map[string]bool | - | - |

**Returns**: (none)



### isTokenSeparator(c: byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | byte | - | - |

**Returns**: `bool`



### candidateLooksLikeSecret(tok: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tok | []byte | - | - |

**Returns**: `bool`



### looksLikeSecret(tok: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tok | []byte | - | - |

**Returns**: `bool`



### jsonUnescape(b: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |

**Returns**: (none)



### hex4(b: []byte, at: int) → (rune, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |
| at | int | - | - |

**Returns**: `(rune, bool)`


