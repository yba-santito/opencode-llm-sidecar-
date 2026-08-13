# API Reference: harness.go

**Language**: Go

**Source**: `engine/evals/harness.go`

---

## Classes

### Fixture

**Inherits from**: (none)



### Manifest

**Inherits from**: (none)



### TransformResult

**Inherits from**: (none)



### FixtureReport

**Inherits from**: (none)



### Report

**Inherits from**: (none)



### engineSystem

**Inherits from**: (none)



## Functions

### Run() → (Report, error)

**Returns**: `(Report, error)`



### RunDir(root: string) → (Report, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | string | - | - |

**Returns**: `(Report, error)`



### RunWithQuality(ctx: context.Context, opts: QualityOptions) → (Report, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| opts | QualityOptions | - | - |

**Returns**: `(Report, error)`



### EmbeddedManifest() → (Manifest, error)

**Returns**: `(Manifest, error)`



### ReadEmbeddedFixture(name: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |

**Returns**: `([]byte, error)`



### RunManifest(m: Manifest, read func(name: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| m | Manifest | - | - |
| read func(name | string | - | - |

**Returns**: `([]byte, error)`



### RunManifestWithQuality(ctx: context.Context, m: Manifest, read func(name: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| m | Manifest | - | - |
| read func(name | string | - | - |

**Returns**: `([]byte, error)`



### RunManifestWithSystem(ctx: context.Context, m: Manifest, read func(name: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| m | Manifest | - | - |
| read func(name | string | - | - |

**Returns**: `([]byte, error)`



### runManifest(ctx: context.Context, m: Manifest, read func(name: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| m | Manifest | - | - |
| read func(name | string | - | - |

**Returns**: `([]byte, error)`



### runManifestWithSystem(ctx: context.Context, m: Manifest, read func(name: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| m | Manifest | - | - |
| read func(name | string | - | - |

**Returns**: `([]byte, error)`



### Transform(_: context.Context, f: Fixture, input: []byte) → (TransformResult, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| f | Fixture | - | - |
| input | []byte | - | - |

**Returns**: `(TransformResult, error)`



### FixtureFiles() → ([]string, error)

**Returns**: `([]string, error)`


