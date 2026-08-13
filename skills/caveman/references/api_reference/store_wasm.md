# API Reference: store_wasm.go

**Language**: Go

**Source**: `engine/ccr/store_wasm.go`

---

## Classes

### record

**Inherits from**: (none)



### Store

**Inherits from**: (none)



## Functions

### Open(unknown: string) → (*Store, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | string | - | - |

**Returns**: `(*Store, error)`



### OpenWithBudget(unknown: string, unknown: int64) → (*Store, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | string | - | - |
| unknown | int64 | - | - |

**Returns**: `(*Store, error)`



### OpenMemory() → (*Store, error)

**Returns**: `(*Store, error)`



### Close() → error

**Returns**: `error`



### Put(rec: Recovery) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rec | Recovery | - | - |

**Returns**: `(string, error)`



### Get(handle: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| handle | string | - | - |

**Returns**: `([]byte, error)`



### GetMetadata(handle: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| handle | string | - | - |

**Returns**: `([]byte, error)`



### cloneObject(obj: Object) → Object

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | Object | - | - |

**Returns**: `Object`



### PutObject(input: Object) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | Object | - | - |

**Returns**: `(string, error)`



### GetObject(id: string) → (Object, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | string | - | - |

**Returns**: `(Object, error)`



### SetObjectCurrentness(id: string, currentness: Currentness) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | string | - | - |
| currentness | Currentness | - | - |

**Returns**: `error`



### SetObjectLifecycle(id: string, lifecycle: Lifecycle) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | string | - | - |
| lifecycle | Lifecycle | - | - |

**Returns**: `error`



### ListSessionObjects(sessionID: string, limit: int) → ([]Object, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |
| limit | int | - | - |

**Returns**: `([]Object, error)`



### FindTaskDecision(decisionID: string) → (Object, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| decisionID | string | - | - |

**Returns**: `(Object, error)`



### Summary() → (Stats, error)

**Returns**: `(Stats, error)`


