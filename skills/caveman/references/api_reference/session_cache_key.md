# API Reference: session_cache_key.go

**Language**: Go

**Source**: `proxy/providers/openai/session_cache_key.go`

---

## Functions

### PlanCacheBreakpoints(body: []byte, meta: providers.RequestMetadata, payg: bool) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |
| payg | bool | - | - |

**Returns**: `([]byte, bool)`



### SessionCacheKey(sessionID: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |

**Returns**: `string`


