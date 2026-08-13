# API Reference: jsonsplice.go

**Language**: Go

**Source**: `proxy/providers/jsonsplice/jsonsplice.go`

---

## Classes

### Span

**Inherits from**: (none)



### Candidate

**Inherits from**: (none)



### FieldInsertion

**Inherits from**: (none)



## Functions

### Root(body: []byte) → (Span, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `(Span, bool)`



### Field(body: []byte, object: Span, name: string) → (Span, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| object | Span | - | - |
| name | string | - | - |

**Returns**: `(Span, bool)`



### Elements(body: []byte, array: Span) → ([]Span, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| array | Span | - | - |

**Returns**: `([]Span, bool)`



### String(body: []byte, span: Span) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| span | Span | - | - |

**Returns**: `(string, bool)`



### StringField(body: []byte, object: Span, name: string) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| object | Span | - | - |
| name | string | - | - |

**Returns**: `(string, bool)`



### Replace(body: []byte, candidates: []Candidate, replacements: [][]byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| candidates | []Candidate | - | - |
| replacements | [][]byte | - | - |

**Returns**: `([]byte, error)`



### ReplaceRaw(body: []byte, span: Span, replacement: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| span | Span | - | - |
| replacement | []byte | - | - |

**Returns**: `([]byte, error)`



### AppendObjectFields(body: []byte, object: Span, fields: ...FieldInsertion) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| object | Span | - | - |
| fields | ...FieldInsertion | - | - |

**Returns**: `([]byte, error)`



### value(body: []byte, start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| start | int | - | - |

**Returns**: `(int, bool)`



### stringEnd(body: []byte, start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| start | int | - | - |

**Returns**: `(int, bool)`



### space(body: []byte, i: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| i | int | - | - |

**Returns**: `int`



### quote(value: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `([]byte, error)`


