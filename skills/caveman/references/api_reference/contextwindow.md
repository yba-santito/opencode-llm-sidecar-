# API Reference: contextwindow.go

**Language**: Go

**Source**: `engine/contextwindow/contextwindow.go`

---

## Classes

### Item

**Inherits from**: (none)



### Options

**Inherits from**: (none)



### Selected

**Inherits from**: (none)



### Result

**Inherits from**: (none)



### candidate

**Inherits from**: (none)



## Functions

### Pack(query: string, items: []Item, opts: Options) → Result

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| query | string | - | - |
| items | []Item | - | - |
| opts | Options | - | - |

**Returns**: `Result`



### latestTimestamp(items: []Item) → time

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| items | []Item | - | - |

**Returns**: `time`



### BM25(query: string, docs: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| query | string | - | - |
| docs | []string | - | - |

**Returns**: (none)



### bm25Scores(query: string, items: []Item)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| query | string | - | - |
| items | []Item | - | - |

**Returns**: (none)



### termFreq(text: string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `map[string]`


