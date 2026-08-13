# API Reference: compressor.go

**Language**: Go

**Source**: `engine/compressors/compressor.go`

---

## Classes

### Metadata

**Inherits from**: (none)



### Registry

**Inherits from**: (none)



### CapabilityRegistry

**Inherits from**: (none)



### Capability

**Inherits from**: (none)



### Provenance

**Inherits from**: (none)



### safetyClassError

**Inherits from**: (none)



## Functions

### metadataBool(v: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | bool | - | - |

**Returns**: (none)



### NewRegistry()

**Returns**: (none)



### Register(c: Compressor)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | Compressor | - | - |

**Returns**: (none)



### For(contentType: string) → (Compressor, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| contentType | string | - | - |

**Returns**: `(Compressor, bool)`



### Default()

**Returns**: (none)



### Capabilities()

**Returns**: (none)



### CapabilityManifest() → ([]byte, error)

**Returns**: `([]byte, error)`



### eligibleSegments(contentType: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| contentType | string | - | - |

**Returns**: (none)


