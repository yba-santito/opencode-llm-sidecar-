# API Reference: memory.go

**Language**: Go

**Source**: `shared/platform/objectstore/memory.go`

---

## Classes

### Memory

**Inherits from**: (none)



## Functions

### NewMemory()

**Returns**: (none)



### Put(_: context.Context, key: string, body: []byte, _: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| key | string | - | - |
| body | []byte | - | - |
| _ | string | - | - |

**Returns**: `error`



### Get(_: context.Context, key: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| key | string | - | - |

**Returns**: `([]byte, error)`



### Delete(_: context.Context, key: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| key | string | - | - |

**Returns**: `error`



### DeleteAllVersions(ctx: context.Context, key: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| key | string | - | - |

**Returns**: `error`



### DeletePrefixAllVersions(_: context.Context, prefix: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| prefix | string | - | - |

**Returns**: `error`



### Exists(_: context.Context, key: string) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| key | string | - | - |

**Returns**: `(bool, error)`



### List(_: context.Context, prefix: string) → ([]string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| prefix | string | - | - |

**Returns**: `([]string, error)`



### ListPage(_: context.Context, unknown: prefix, startAfter: string, maxKeys: int) → (ObjectPage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| unknown | prefix | - | - |
| startAfter | string | - | - |
| maxKeys | int | - | - |

**Returns**: `(ObjectPage, error)`



### Len() → int

**Returns**: `int`


