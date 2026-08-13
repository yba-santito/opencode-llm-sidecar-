# API Reference: breakpoint_plan.go

**Language**: Go

**Source**: `proxy/providers/anthropic/breakpoint_plan.go`

---

## Classes

### spliceEdit

**Inherits from**: (none)



## Functions

### PlanCacheBreakpoints(body: []byte, meta: providers.RequestMetadata, payg: bool) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |
| payg | bool | - | - |

**Returns**: `([]byte, bool)`



### planCacheBreakpoints(data: []byte, payg: bool) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| payg | bool | - | - |

**Returns**: `([]byte, bool)`



### coldStartPlan(data: []byte, root: jsonsplice.Span)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| root | jsonsplice.Span | - | - |

**Returns**: (none)



### toolsTailEdit(data: []byte, root: jsonsplice.Span) → (spliceEdit, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| root | jsonsplice.Span | - | - |

**Returns**: `(spliceEdit, bool)`



### systemTailEdit(data: []byte, root: jsonsplice.Span) → (spliceEdit, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| root | jsonsplice.Span | - | - |

**Returns**: `(spliceEdit, bool)`



### frontierEdit(data: []byte, root: jsonsplice.Span) → (spliceEdit, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| root | jsonsplice.Span | - | - |

**Returns**: `(spliceEdit, bool)`



### managedPlan(data: []byte, root: jsonsplice.Span, budget: int, payg: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| root | jsonsplice.Span | - | - |
| budget | int | - | - |
| payg | bool | - | - |

**Returns**: (none)



### lookbackPlan()

**Returns**: (none)



### contentBlocksCarryBreakpoint(data: []byte, root: jsonsplice.Span) → (marked bool, ok bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| root | jsonsplice.Span | - | - |

**Returns**: `(marked bool, ok bool)`



### blockIsMarked(data: []byte, span: jsonsplice.Span) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| span | jsonsplice.Span | - | - |

**Returns**: `bool`



### appendFieldEdit(data: []byte, object: jsonsplice.Span) → (spliceEdit, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| object | jsonsplice.Span | - | - |

**Returns**: `(spliceEdit, bool)`



### applySpliceEdits(data: []byte, edits: []spliceEdit) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| edits | []spliceEdit | - | - |

**Returns**: `([]byte, bool)`



### isJSONObject(data: []byte, span: jsonsplice.Span) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| span | jsonsplice.Span | - | - |

**Returns**: `bool`



### isJSONArray(data: []byte, span: jsonsplice.Span) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| span | jsonsplice.Span | - | - |

**Returns**: `bool`



### isJSONSpaceByte(b: byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | byte | - | - |

**Returns**: `bool`



### countJSONKey(value: any, key: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |
| key | string | - | - |

**Returns**: `int`


