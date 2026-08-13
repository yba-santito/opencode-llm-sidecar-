# API Reference: retrieve_query.go

**Language**: Go

**Source**: `engine/retrieve_query.go`

---

## Classes

### ranked

**Inherits from**: (none)



## Functions

### RetrieveQuery(unknown: handle, query: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | handle | - | - |
| query | string | - | - |

**Returns**: `([]byte, error)`



### narrowToQuery(content: []byte, query: string) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | []byte | - | - |
| query | string | - | - |

**Returns**: `([]byte, bool)`



### retrievalUnits(content: []byte) → ([]string, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | []byte | - | - |

**Returns**: `([]string, string)`



### collectJSONRecordGroups(node: any, out: *[][]string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| node | any | - | - |
| out | *[][]string | - | - |

**Returns**: (none)



### tabularRetrievalUnits(content: []byte) → ([]string, string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | []byte | - | - |

**Returns**: `([]string, string, bool)`



### appendSections(into: []string, text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| into | []string | - | - |
| text | string | - | - |

**Returns**: (none)



### splitSections(text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: (none)


