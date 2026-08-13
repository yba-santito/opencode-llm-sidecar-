# API Reference: runstate.go

**Language**: Go

**Source**: `proxy/internal/runstate/runstate.go`

---

## Classes

### State

**Inherits from**: (none)



### PublicState

**Inherits from**: (none)



### validators

**Inherits from**: (none)



## Functions

### Unknown() → PublicState

**Returns**: `PublicState`



### PortFromListen(listen: string) → (int, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| listen | string | - | - |

**Returns**: `(int, error)`



### Path(home: string, port: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |
| port | int | - | - |

**Returns**: `string`



### New(unknown: listen, unknown: mode, unknown: owner, version: string) → (State, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | listen | - | - |
| unknown | mode | - | - |
| unknown | owner | - | - |
| version | string | - | - |

**Returns**: `(State, error)`



### Write(home: string, state: State) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |
| state | State | - | - |

**Returns**: `error`



### read(home: string, port: int) → (State, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |
| port | int | - | - |

**Returns**: `(State, error)`



### validate(state: State, checks: validators) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| state | State | - | - |
| checks | validators | - | - |

**Returns**: `bool`



### ReadValidated(home: string, port: int) → PublicState

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |
| port | int | - | - |

**Returns**: `PublicState`



### RemoveMatching(home: string, port: int, token: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |
| port | int | - | - |
| token | string | - | - |

**Returns**: `error`



### processAlive(pid: int) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pid | int | - | - |

**Returns**: `bool`



### processExecutable(pid: int) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pid | int | - | - |

**Returns**: `(string, error)`



### portBound(listen: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| listen | string | - | - |

**Returns**: `bool`


