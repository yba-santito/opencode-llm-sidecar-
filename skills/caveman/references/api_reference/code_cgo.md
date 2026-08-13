# API Reference: code_cgo.go

**Language**: Go

**Source**: `engine/compressors/code_cgo.go`

---

## Classes

### lang

**Inherits from**: (none)



### codeCompressor

**Inherits from**: (none)



### replacement

**Inherits from**: (none)



## Functions

### newCode() → Compressor

**Returns**: `Compressor`



### newCodeWith(opts: CodeOptions) → Compressor

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | CodeOptions | - | - |

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



### parse(l: *lang, src: []byte) → (*sitter.Node, *sitter.Tree, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| l | *lang | - | - |
| src | []byte | - | - |

**Returns**: `(*sitter.Node, *sitter.Tree, bool)`



### isFuncLike(t: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | string | - | - |

**Returns**: `bool`



### isBlock(t: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | string | - | - |

**Returns**: `bool`



### collectBodies(n: *sitter.Node, src: []byte, elision: string, out: *[]replacement)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | *sitter.Node | - | - |
| src | []byte | - | - |
| elision | string | - | - |
| out | *[]replacement | - | - |

**Returns**: (none)



### isCommentNode(t: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | string | - | - |

**Returns**: `bool`



### collectComments(n: *sitter.Node, src: []byte, opts: CodeOptions, out: *[]replacement)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | *sitter.Node | - | - |
| src | []byte | - | - |
| opts | CodeOptions | - | - |
| out | *[]replacement | - | - |

**Returns**: (none)



### isDirectiveComment(text: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `bool`



### isPythonDocstring(n: *sitter.Node, src: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | *sitter.Node | - | - |
| src | []byte | - | - |

**Returns**: `bool`



### applyReplacements(src: []byte, repls: []replacement)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| src | []byte | - | - |
| repls | []replacement | - | - |

**Returns**: (none)



### sniffLanguage(input: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: (none)


