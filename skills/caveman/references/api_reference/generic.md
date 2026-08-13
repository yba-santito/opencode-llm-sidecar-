# API Reference: generic.go

**Language**: Go

**Source**: `shared/platform/importers/generic.go`

---

## Functions

### parseGeneric(data: []byte, opts: Options) → ([]Span, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| opts | Options | - | - |

**Returns**: `([]Span, error)`



### validateGenericFieldMap(fieldMap: map[string]string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fieldMap | map[string]string | - | - |

**Returns**: `error`



### decodeGenericRecords(data: []byte) → ([]map[string]any, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |

**Returns**: `([]map[string]any, error)`



### mapGeneric(rec: map[string]any, opts: Options) → (Span, map[string]bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rec | map[string]any | - | - |
| opts | Options | - | - |

**Returns**: `(Span, map[string]bool, error)`



### assignString(sp: *Span, unknown: target, v: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sp | *Span | - | - |
| unknown | target | - | - |
| v | string | - | - |

**Returns**: (none)



### assignInt(sp: *Span, target: string, v: uint64)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sp | *Span | - | - |
| target | string | - | - |
| v | uint64 | - | - |

**Returns**: (none)



### lookupPath(rec: map[string]any, path: string) → (any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rec | map[string]any | - | - |
| path | string | - | - |

**Returns**: `(any, bool)`


