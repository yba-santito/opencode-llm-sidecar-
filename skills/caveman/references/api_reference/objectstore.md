# API Reference: objectstore.go

**Language**: Go

**Source**: `shared/platform/objectstore/objectstore.go`

---

## Classes

### ObjectPage

**Inherits from**: (none)



### minioStore

**Inherits from**: (none)



### Config

**Inherits from**: (none)



## Functions

### ListPage(ctx: context.Context, store: Store, unknown: prefix, startAfter: string, maxKeys: int) → (ObjectPage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| store | Store | - | - |
| unknown | prefix | - | - |
| startAfter | string | - | - |
| maxKeys | int | - | - |

**Returns**: `(ObjectPage, error)`



### PurgeObject(ctx: context.Context, store: Store, key: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| store | Store | - | - |
| key | string | - | - |

**Returns**: `error`



### PurgePrefix(ctx: context.Context, store: Store, prefix: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| store | Store | - | - |
| prefix | string | - | - |

**Returns**: `error`



### FromEnv() → (Store, error)

**Returns**: `(Store, error)`



### validateConfig(cfg: Config, production: bool) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | Config | - | - |
| production | bool | - | - |

**Returns**: `error`



### New(cfg: Config) → (Store, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | Config | - | - |

**Returns**: `(Store, error)`



### Probe(ctx: context.Context, store: Store) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| store | Store | - | - |

**Returns**: `error`



### Put(ctx: context.Context, key: string, body: []byte, contentType: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| key | string | - | - |
| body | []byte | - | - |
| contentType | string | - | - |

**Returns**: `error`



### Get(ctx: context.Context, key: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| key | string | - | - |

**Returns**: `([]byte, error)`



### Delete(ctx: context.Context, key: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| key | string | - | - |

**Returns**: `error`



### DeleteAllVersions(ctx: context.Context, key: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| key | string | - | - |

**Returns**: `error`



### DeletePrefixAllVersions(ctx: context.Context, prefix: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| prefix | string | - | - |

**Returns**: `error`



### deleteVersions(ctx: context.Context, keyOrPrefix: string, exact: bool) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| keyOrPrefix | string | - | - |
| exact | bool | - | - |

**Returns**: `error`



### Exists(ctx: context.Context, key: string) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| key | string | - | - |

**Returns**: `(bool, error)`



### List(ctx: context.Context, prefix: string) → ([]string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| prefix | string | - | - |

**Returns**: `([]string, error)`



### ListPage(ctx: context.Context, unknown: prefix, startAfter: string, maxKeys: int) → (ObjectPage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | prefix | - | - |
| startAfter | string | - | - |
| maxKeys | int | - | - |

**Returns**: `(ObjectPage, error)`


