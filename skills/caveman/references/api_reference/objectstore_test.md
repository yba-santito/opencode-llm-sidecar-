# API Reference: objectstore_test.go

**Language**: Go

**Source**: `shared/platform/objectstore/objectstore_test.go`

---

## Classes

### deadlineCleanupStore

**Inherits from**: (none)



### probeTrackingStore

**Inherits from**: (none)



### prefixTrackingStore

**Inherits from**: (none)



### plainStore

**Inherits from**: (none)



### faultStore

**Inherits from**: (none)



## Functions

### runStoreContract(t: *testing.T, s: Store)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| s | Store | - | - |

**Returns**: (none)



### TestMemoryStoreContract(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestMemoryVersionPurgeContracts(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPurgePrefixUsesVersionPurgerAndFallback(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPurgeFallbackSurfacesListAndDeleteErrors(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestProbeProvesReadWriteAndVersionPurge(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestProbeCleanupHonorsCallerDeadline(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### Get(unknown: context.Context, unknown: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | context.Context | - | - |
| unknown | string | - | - |

**Returns**: `([]byte, error)`



### Delete(_: context.Context, _: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| _ | string | - | - |

**Returns**: `error`



### DeleteAllVersions(ctx: context.Context, _: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| _ | string | - | - |

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



### Put(unknown: context.Context, unknown: string, unknown: []byte, unknown: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | context.Context | - | - |
| unknown | string | - | - |
| unknown | []byte | - | - |
| unknown | string | - | - |

**Returns**: `error`



### Get(unknown: context.Context, unknown: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | context.Context | - | - |
| unknown | string | - | - |

**Returns**: `([]byte, error)`



### Delete(unknown: context.Context, unknown: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | context.Context | - | - |
| unknown | string | - | - |

**Returns**: `error`



### Exists(unknown: context.Context, unknown: string) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | context.Context | - | - |
| unknown | string | - | - |

**Returns**: `(bool, error)`



### List(unknown: context.Context, unknown: string) → ([]string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | context.Context | - | - |
| unknown | string | - | - |

**Returns**: `([]string, error)`



### TestValidateConfigProductionRequiresTLSAndCredentials(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestValidateConfigLocalAllowsExplicitPlaintextMinIO(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFromEnvProductionDoesNotDefaultBucket(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFromEnvProductionRequiresObjectStore(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFromEnvLocalDisabledAndConfigured(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestNewConstructsClientWithoutNetwork(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLiveMinioContract(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


