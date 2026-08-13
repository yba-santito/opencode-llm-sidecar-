# API Reference: span.go

**Language**: Go

**Source**: `shared/platform/telemetry/span.go`

---

## Classes

### Span

**Inherits from**: (none)



### Provenance

**Inherits from**: (none)



### GenAIFields

**Inherits from**: (none)



## Functions

### ExtractGenAIFields(unknown: attrs, resourceAttrs: map[string]string, spanName: string) → GenAIFields

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | attrs | - | - |
| resourceAttrs | map[string]string | - | - |
| spanName | string | - | - |

**Returns**: `GenAIFields`



### firstValue(attrs: map[string]string, keys: ...string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| attrs | map[string]string | - | - |
| keys | ...string | - | - |

**Returns**: `string`



### firstUint(attrs: map[string]string, keys: ...string) → uint64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| attrs | map[string]string | - | - |
| keys | ...string | - | - |

**Returns**: `uint64`



### firstNonNegativeFloat(attrs: map[string]string, keys: ...string) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| attrs | map[string]string | - | - |
| keys | ...string | - | - |

**Returns**: `float64`



### ApplyProvenance(span: *Span, provenance: Provenance)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| span | *Span | - | - |
| provenance | Provenance | - | - |

**Returns**: (none)



### AttributeAllowed(key: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| key | string | - | - |

**Returns**: `bool`



### SanitizeAttributes(attrs: map[string]string) → (map[string]string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| attrs | map[string]string | - | - |

**Returns**: `(map[string]string, error)`


