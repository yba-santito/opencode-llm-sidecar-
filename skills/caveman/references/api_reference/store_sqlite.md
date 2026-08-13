# API Reference: store_sqlite.go

**Language**: Go

**Source**: `engine/ccr/store_sqlite.go`

---

## Classes

### Store

**Inherits from**: (none)



## Functions

### SQLiteDSN(path: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `string`



### RetryOnBusy(fn: func() → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fn | func( | - | - |

**Returns**: `error`



### retryOnBusy(fn: func() → error, maxWait

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fn | func( | - | - |

**Returns**: `error, maxWait`



### isBusy(err: error) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| err | error | - | - |

**Returns**: `bool`



### Open(path: string) → (*Store, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `(*Store, error)`



### OpenWithBudget(path: string, maxBytes: int64) → (*Store, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| maxBytes | int64 | - | - |

**Returns**: `(*Store, error)`



### openWithBudget(path: string, maxBytes: int64, afterPrepare: func()

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| maxBytes | int64 | - | - |
| afterPrepare | func( | - | - |

**Returns**: (none)



### PrepareSQLitePath(path: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `error`



### PrepareSQLitePathCanonical(path: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `(string, error)`



### secureSQLiteFiles(path: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `error`



### secureSQLiteFile(path: string, create: bool) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| create | bool | - | - |

**Returns**: `error`



### configureStorageBudget(db: *sql.DB, maxBytes: int64) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| db | *sql.DB | - | - |
| maxBytes | int64 | - | - |

**Returns**: `error`



### ensureMetadataColumn(db: *sql.DB) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| db | *sql.DB | - | - |

**Returns**: `error`



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



### recoveryUnchanged(handle: string, rec: Recovery) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| handle | string | - | - |
| rec | Recovery | - | - |

**Returns**: `(bool, error)`



### checkRecoveryBudget(handle: string, newBytes: int64) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| handle | string | - | - |
| newBytes | int64 | - | - |

**Returns**: `error`



### storageBytes() → (int64, error)

**Returns**: `(int64, error)`



### isFull(err: error) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| err | error | - | - |

**Returns**: `bool`



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



### PutObject(input: Object) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | Object | - | - |

**Returns**: `(string, error)`



### scanObject(scanner interface{: Scan(...any) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| scanner interface{ | Scan(...any | - | - |

**Returns**: `error`



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


