# API Reference: pack.go

**Language**: Go

**Source**: `proxy/internal/nativepack/pack.go`

---

## Classes

### Core

**Inherits from**: (none)



### Activation

**Inherits from**: (none)



### Skill

**Inherits from**: (none)



### Pack

**Inherits from**: (none)



## Functions

### Load() → (Pack, error)

**Returns**: `(Pack, error)`



### Select(taskType: string) → (Skill, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| taskType | string | - | - |

**Returns**: `(Skill, bool)`



### validate(pack: Pack) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pack | Pack | - | - |

**Returns**: `error`



### contains(values: []string, target: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | []string | - | - |
| target | string | - | - |

**Returns**: `bool`


