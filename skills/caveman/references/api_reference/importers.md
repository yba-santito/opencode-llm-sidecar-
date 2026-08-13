# API Reference: importers.go

**Language**: Go

**Source**: `shared/platform/importers/importers.go`

---

## Classes

### Options

**Inherits from**: (none)



### Summary

**Inherits from**: (none)



## Functions

### Parse(format: string, data: []byte, opts: Options) → ([]Span, Summary, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| format | string | - | - |
| data | []byte | - | - |
| opts | Options | - | - |

**Returns**: `([]Span, Summary, error)`



### applyScope(sp: *Span, opts: Options)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sp | *Span | - | - |
| opts | Options | - | - |

**Returns**: (none)



### sourceSystemForFormat(format: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| format | string | - | - |

**Returns**: `string`



### parseFlexInt(v: any) → uint64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `uint64`



### parseFlexFloat(v: any) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `float64`



### asString(v: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `string`



### roundUSD(v: float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | float64 | - | - |

**Returns**: `float64`



### parseTimeFlexible(v: any) → (string, int64)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `(string, int64)`



### epochToCH(n: int64) → (string, int64)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int64 | - | - |

**Returns**: `(string, int64)`



### durationMS(unknown: startNs, endNs: int64) → uint64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | startNs | - | - |
| endNs | int64 | - | - |

**Returns**: `uint64`


