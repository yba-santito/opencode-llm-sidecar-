# API Reference: shrink.go

**Language**: Go

**Source**: `shrink/shrink.go`

---

## Classes

### config

**Inherits from**: (none)



### Result

**Inherits from**: (none)



### ToolReport

**Inherits from**: (none)



### Report

**Inherits from**: (none)



### ToolProfile

**Inherits from**: (none)



### toolEntry

**Inherits from**: (none)



## Functions

### WithStore(s: *ccr.Store) → Option

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | *ccr.Store | - | - |

**Returns**: `Option`



### WithStorePath(path: string) → Option

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `Option`



### resolveStore(opts: []Option) → (*ccr.Store, func()

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | []Option | - | - |

**Returns**: `(*ccr.Store, func()`



### defaultCCRPath() → (string, error)

**Returns**: `(string, error)`



### Shrink(input: []byte, opts: ...Option) → (Result, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |
| opts | ...Option | - | - |

**Returns**: `(Result, error)`



### Recover(handle: string, opts: ...Option) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| handle | string | - | - |
| opts | ...Option | - | - |

**Returns**: `([]byte, error)`



### Lint(input: []byte) → (Report, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `(Report, error)`



### SelectionProfile(input: []byte) → (map[string]ToolProfile, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `(map[string]ToolProfile, error)`



### extractTools(input: []byte) → ([]toolEntry, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `([]toolEntry, error)`



### schemaOf(tool: map[string]any) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tool | map[string]any | - | - |

**Returns**: `map[string]`



### profileOf(schema: map[string]any) → ToolProfile

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| schema | map[string]any | - | - |

**Returns**: `ToolProfile`



### ratio(unknown: before, after: int) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | before | - | - |
| after | int | - | - |

**Returns**: `float64`


