# API Reference: equivalence.go

**Language**: Go

**Source**: `cacheengine/cachebench/equivalence.go`

---

## Functions

### ModelVisibleEquivalent(unknown: original, transformed: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | original | - | - |
| transformed | []byte | - | - |

**Returns**: `bool`



### decodeJSON(raw: []byte) → (any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |

**Returns**: `(any, bool)`



### sanitizeCacheMetadata(value: any, path: []string) → (any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |
| path | []string | - | - |

**Returns**: `(any, bool)`



### appendPath(path: []string, element: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | []string | - | - |
| element | string | - | - |

**Returns**: (none)



### legalCacheMetadata(path: []string, key: string, value: any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | []string | - | - |
| key | string | - | - |
| value | any | - | - |

**Returns**: `bool`



### exactStringMap(value: any, unknown: key, expected: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |
| unknown | key | - | - |
| expected | string | - | - |

**Returns**: `bool`



### pathMatches(path: []string, pattern: ...string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | []string | - | - |
| pattern | ...string | - | - |

**Returns**: `bool`



### isLowerHex(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### normalizeTextBlocks(value: any) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |

**Returns**: `(string, bool)`


