# API Reference: axtree.go

**Language**: Go

**Source**: `engine/compressors/axtree.go`

---

## Classes

### axTreeCompressor

**Inherits from**: (none)



### axTreeEnvelope

**Inherits from**: (none)



### axNode

**Inherits from**: (none)



### axValue

**Inherits from**: (none)



### axProperty

**Inherits from**: (none)



### axRecord

**Inherits from**: (none)



### axUIDTarget

**Inherits from**: (none)



## Functions

### NewAXTree() → Compressor

**Returns**: `Compressor`



### Compress(input: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `([]byte, bool)`



### parseAXTree(input: []byte) → ([]axNode, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `([]axNode, bool)`



### validAXTree(nodes: []axNode) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| nodes | []axNode | - | - |

**Returns**: `bool`



### curateAXTree(nodes: []axNode) → ([]axRecord, map[string]axUIDTarget)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| nodes | []axNode | - | - |

**Returns**: `([]axRecord, map[string]axUIDTarget)`



### normalizeAXNode(n: axNode, depth: int) → axRecord

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | axNode | - | - |
| depth | int | - | - |

**Returns**: `axRecord`



### axState(n: axNode) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | axNode | - | - |

**Returns**: `map[string]`



### droppableGeneric(rec: axRecord, n: axNode) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rec | axRecord | - | - |
| n | axNode | - | - |

**Returns**: `bool`



### backendID(n: axNode) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | axNode | - | - |

**Returns**: `int`



### frameID(n: axNode) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | axNode | - | - |

**Returns**: `string`



### axUIDBase(n: axNode) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | axNode | - | - |

**Returns**: `string`



### shouldExposeAXUID(rec: axRecord, n: axNode) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rec | axRecord | - | - |
| n | axNode | - | - |

**Returns**: `bool`



### pruneDuplicateAXText(records: []axRecord)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| records | []axRecord | - | - |

**Returns**: (none)



### focusAXRecords(records: []axRecord, query: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| records | []axRecord | - | - |
| query | string | - | - |

**Returns**: (none)



### axQueryTerms(query: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| query | string | - | - |

**Returns**: (none)



### visibleUIDTargets(records: []axRecord, all: map[string]axUIDTarget) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| records | []axRecord | - | - |
| all | map[string]axUIDTarget | - | - |

**Returns**: `map[string]`



### renderAXRecords(records: []axRecord)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| records | []axRecord | - | - |

**Returns**: (none)



### compactAXRole(role: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| role | string | - | - |

**Returns**: `string`



### axStateLabels(state: map[string]bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| state | map[string]bool | - | - |

**Returns**: (none)



### uniqueAXUID(base: string, seen: map[string]int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| base | string | - | - |
| seen | map[string]int | - | - |

**Returns**: `string`



### compactAXString(v: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `string`



### axStateBool(key: string, v: any) → (bool, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| key | string | - | - |
| v | any | - | - |

**Returns**: `(bool, bool)`



### axLooseBool(v: any) → (bool, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `(bool, bool)`


