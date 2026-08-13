# API Reference: html.go

**Language**: Go

**Source**: `engine/compressors/html.go`

---

## Classes

### htmlCompressor

**Inherits from**: (none)



## Functions

### NewHTML() → Compressor

**Returns**: `Compressor`



### ContentType() → string

**Returns**: `string`



### SafetyClass() → safety

**Returns**: `safety`



### Compress(input: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `([]byte, bool)`



### stripNoise(n: *html.Node)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | *html.Node | - | - |

**Returns**: (none)



### isScorable(a: atom.Atom) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| a | atom.Atom | - | - |

**Returns**: `bool`



### isContainer(a: atom.Atom) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| a | atom.Atom | - | - |

**Returns**: `bool`



### accumulateScores(root: *html.Node, scores: map[*html.Node]int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | *html.Node | - | - |
| scores | map[*html.Node]int | - | - |

**Returns**: (none)



### pickBest(root: *html.Node, scores: map[*html.Node]int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | *html.Node | - | - |
| scores | map[*html.Node]int | - | - |

**Returns**: (none)



### classIDWeight(n: *html.Node) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | *html.Node | - | - |

**Returns**: `int`



### containerAncestor(n: *html.Node)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | *html.Node | - | - |

**Returns**: (none)



### findFirst(n: *html.Node, a: atom.Atom)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | *html.Node | - | - |
| a | atom.Atom | - | - |

**Returns**: (none)



### textContent(n: *html.Node) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | *html.Node | - | - |

**Returns**: `string`



### textLen(n: *html.Node) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | *html.Node | - | - |

**Returns**: `int`



### anchorTextLen(n: *html.Node) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | *html.Node | - | - |

**Returns**: `int`



### renderText(n: *html.Node) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | *html.Node | - | - |

**Returns**: `string`



### isBlockLevel(a: atom.Atom) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| a | atom.Atom | - | - |

**Returns**: `bool`



### collapseWhitespace(s: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `string`



### minInt(unknown: a, b: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | a | - | - |
| b | int | - | - |

**Returns**: `int`


