# API Reference: langfuse.go

**Language**: Go

**Source**: `shared/platform/importers/langfuse.go`

---

## Classes

### langfuseObservation

**Inherits from**: (none)



### langfuseUsage

**Inherits from**: (none)



### langfuseEnvelope

**Inherits from**: (none)



## Functions

### parseLangfuse(data: []byte, opts: Options) → ([]Span, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| opts | Options | - | - |

**Returns**: `([]Span, error)`



### decodeLangfuse(data: []byte) → ([]langfuseObservation, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |

**Returns**: `([]langfuseObservation, error)`



### mapLangfuse(o: langfuseObservation, opts: Options) → Span

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| o | langfuseObservation | - | - |
| opts | Options | - | - |

**Returns**: `Span`



### firstNonZero(candidates: ...any) → uint64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| candidates | ...any | - | - |

**Returns**: `uint64`


