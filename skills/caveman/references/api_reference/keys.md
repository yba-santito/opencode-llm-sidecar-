# API Reference: keys.go

**Language**: Go

**Source**: `shared/platform/security/keys.go`

---

## Functions

### ValidatePassword(password: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| password | string | - | - |

**Returns**: `error`



### GenerateProjectKey() → (string, string, error)

**Returns**: `(string, string, error)`



### HashProjectKey(unknown: pepper, full: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | pepper | - | - |
| full | string | - | - |

**Returns**: `string`



### ParseProjectKey(value: string) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `(string, bool)`



### HashPassword(password: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| password | string | - | - |

**Returns**: `(string, error)`



### CheckPassword(unknown: encoded, password: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | encoded | - | - |
| password | string | - | - |

**Returns**: `bool`



### dummyPasswordCheck(password: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| password | string | - | - |

**Returns**: `bool`



### HMACSHA256(unknown: secret, data: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | secret | - | - |
| data | string | - | - |

**Returns**: `string`


