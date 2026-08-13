# API Reference: helicone.go

**Language**: Go

**Source**: `shared/platform/importers/helicone.go`

---

## Classes

### heliconeRecord

**Inherits from**: (none)



### heliconeRequest

**Inherits from**: (none)



### heliconeResp

**Inherits from**: (none)



### heliconeUsage

**Inherits from**: (none)



### heliconeEnvelope

**Inherits from**: (none)



## Functions

### parseHelicone(data: []byte, opts: Options) → ([]Span, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| opts | Options | - | - |

**Returns**: `([]Span, error)`



### decodeHelicone(data: []byte) → ([]heliconeRecord, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |

**Returns**: `([]heliconeRecord, error)`



### mapHelicone(rec: heliconeRecord, opts: Options) → Span

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rec | heliconeRecord | - | - |
| opts | Options | - | - |

**Returns**: `Span`


