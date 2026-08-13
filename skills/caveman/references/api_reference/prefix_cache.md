# API Reference: prefix_cache.go

**Language**: Go

**Source**: `proxy/internal/store/prefix_cache.go`

---

## Functions

### LookupReplacement(scope: string, original: []byte) → ([]byte, string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| scope | string | - | - |
| original | []byte | - | - |

**Returns**: `([]byte, string, bool)`



### RememberReplacement(scope: string, unknown: original, replacement: []byte, handle: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| scope | string | - | - |
| unknown | original | - | - |
| replacement | []byte | - | - |
| handle | string | - | - |

**Returns**: `([]byte, error)`



### readReplacement(key: string) → ([]byte, string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| key | string | - | - |

**Returns**: `([]byte, string, bool)`



### evictPrefixReplacements()

**Returns**: (none)



### prefixCacheKey(scope: string, original: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| scope | string | - | - |
| original | []byte | - | - |

**Returns**: `string`



### prefixCacheNow() → string

**Returns**: `string`


