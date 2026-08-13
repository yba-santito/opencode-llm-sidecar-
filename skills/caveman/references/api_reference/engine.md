# API Reference: engine.go

**Language**: Go

**Source**: `engine/engine.go`

---

## Classes

### Engine

**Inherits from**: (none)



## Functions

### New(store: *ccr.Store, counter: tokens.Counter)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| store | *ccr.Store | - | - |
| counter | tokens.Counter | - | - |

**Returns**: (none)



### NewWithRegistry(store: *ccr.Store, counter: tokens.Counter, registry: *compressors.Registry)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| store | *ccr.Store | - | - |
| counter | tokens.Counter | - | - |
| registry | *compressors.Registry | - | - |

**Returns**: (none)



### defaultRegistry(counter: tokens.Counter)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| counter | tokens.Counter | - | - |

**Returns**: (none)



### Compress(input: []byte, opts: Options) → (Result, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |
| opts | Options | - | - |

**Returns**: `(Result, error)`



### Simulate(input: []byte, opts: Options) → SimResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |
| opts | Options | - | - |

**Returns**: `SimResult`



### compressWith(comp: compressors.Compressor, input: []byte, query: string) → ([]byte, compressors.Metadata, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| comp | compressors.Compressor | - | - |
| input | []byte | - | - |
| query | string | - | - |

**Returns**: `([]byte, compressors.Metadata, bool)`



### normalizeMetadata(comp: compressors.Compressor, meta: compressors.Metadata, info: safety.Info) → compressors

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| comp | compressors.Compressor | - | - |
| meta | compressors.Metadata | - | - |
| info | safety.Info | - | - |

**Returns**: `compressors`



### boolPtr(v: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | bool | - | - |

**Returns**: (none)



### Retrieve(handle: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| handle | string | - | - |

**Returns**: `([]byte, error)`



### RetrieveMetadata(handle: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| handle | string | - | - |

**Returns**: `([]byte, error)`



### Stats() → (ccr.Stats, error)

**Returns**: `(ccr.Stats, error)`


