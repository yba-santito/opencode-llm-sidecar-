# API Reference: splice.go

**Language**: Go

**Source**: `proxy/providers/anthropic/splice.go`

---

## Classes

### jsonSpan

**Inherits from**: (none)



### spliceCandidate

**Inherits from**: (none)



## Functions

### rootObjectSpan(body: []byte) → (jsonSpan, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `(jsonSpan, bool)`



### findObjectField(body: []byte, obj: jsonSpan, field: string) → (jsonSpan, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| obj | jsonSpan | - | - |
| field | string | - | - |

**Returns**: `(jsonSpan, bool)`



### arrayElements(body: []byte, arr: jsonSpan) → ([]jsonSpan, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| arr | jsonSpan | - | - |

**Returns**: `([]jsonSpan, bool)`



### scanJSONValue(body: []byte, start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| start | int | - | - |

**Returns**: `(int, bool)`



### scanJSONString(body: []byte, start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| start | int | - | - |

**Returns**: `(int, bool)`



### skipJSONSpace(body: []byte, i: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| i | int | - | - |

**Returns**: `int`



### decodeJSONString(raw: []byte) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |

**Returns**: `(string, bool)`



### isJSONString(body: []byte, span: jsonSpan) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| span | jsonSpan | - | - |

**Returns**: `bool`



### quoteJSONStringNoHTML(s: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `([]byte, error)`



### spliceStringReplacements(body: []byte, candidates: []spliceCandidate, reps: [][]byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| candidates | []spliceCandidate | - | - |
| reps | [][]byte | - | - |

**Returns**: `([]byte, error)`


