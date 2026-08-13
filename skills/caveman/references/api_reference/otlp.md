# API Reference: otlp.go

**Language**: Go

**Source**: `shared/platform/importers/otlp.go`

---

## Classes

### otlpPayload

**Inherits from**: (none)



### otlpResourceSpans

**Inherits from**: (none)



### otlpResource

**Inherits from**: (none)



### otlpScopeSpans

**Inherits from**: (none)



### otlpSpan

**Inherits from**: (none)



### otlpKV

**Inherits from**: (none)



### otlpAnyVal

**Inherits from**: (none)



### otlpEvent

**Inherits from**: (none)



### otlpStatus

**Inherits from**: (none)



## Functions

### string() → string

**Returns**: `string`



### parseOTLP(data: []byte, opts: Options) → ([]Span, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| opts | Options | - | - |

**Returns**: `([]Span, error)`



### mapOTLPSpan(sp: otlpSpan, resAttrs: map[string]string, opts: Options) → Span

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sp | otlpSpan | - | - |
| resAttrs | map[string]string | - | - |
| opts | Options | - | - |

**Returns**: `Span`



### otlpKVMap(kvs: []otlpKV) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| kvs | []otlpKV | - | - |

**Returns**: `map[string]`



### otlpNano(s: string) → int64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `int64`


