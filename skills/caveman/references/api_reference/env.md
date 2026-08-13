# API Reference: env.go

**Language**: Go

**Source**: `shared/platform/env/env.go`

---

## Functions

### String(unknown: name, fallback: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | name | - | - |
| fallback | string | - | - |

**Returns**: `string`



### Bool(name: string, fallback: bool) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |
| fallback | bool | - | - |

**Returns**: `bool`



### Int(name: string, fallback: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |
| fallback | int | - | - |

**Returns**: `int`



### Required(name: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |

**Returns**: `(string, error)`



### IsProduction() → bool

**Returns**: `bool`



### RefuseProductionDefaults() → error

**Returns**: `error`



### RefuseGatewayProductionDefaults() → error

**Returns**: `error`



### validateProductionTextSecrets(names: []string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| names | []string | - | - |

**Returns**: `error`



### validateProductionPublicURL() → error

**Returns**: `error`



### distinctBytes(value: []byte) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | []byte | - | - |

**Returns**: `int`


