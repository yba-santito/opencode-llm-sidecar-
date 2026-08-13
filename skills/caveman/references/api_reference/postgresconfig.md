# API Reference: postgresconfig.go

**Language**: Go

**Source**: `shared/platform/postgresconfig/postgresconfig.go`

---

## Classes

### tenantTableSchema

**Inherits from**: (none)



### tenantForeignKeySchema

**Inherits from**: (none)



## Functions

### ParsePoolConfig(databaseURL: string) → (*pgxpool.Config, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| databaseURL | string | - | - |

**Returns**: `(*pgxpool.Config, error)`



### caPEMFromEnvironment() → (string, error)

**Returns**: `(string, error)`



### NewPool(ctx: context.Context, databaseURL: string) → (*pgxpool.Pool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| databaseURL | string | - | - |

**Returns**: `(*pgxpool.Pool, error)`



### NewRuntimePool(ctx: context.Context, unknown: databaseURL, expectedRole: string) → (*pgxpool.Pool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | databaseURL | - | - |
| expectedRole | string | - | - |

**Returns**: `(*pgxpool.Pool, error)`



### ValidateRuntimeIdentity(ctx: context.Context, pool: *pgxpool.Pool, expectedRole: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| pool | *pgxpool.Pool | - | - |
| expectedRole | string | - | - |

**Returns**: `error`



### validateRuntimeIdentity(unknown: currentUser, unknown: sessionUser, expectedRole: string, unknown: superuser, unknown: bypassRLS, unknown: member, ownsTenantTable: bool) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | currentUser | - | - |
| unknown | sessionUser | - | - |
| expectedRole | string | - | - |
| unknown | superuser | - | - |
| unknown | bypassRLS | - | - |
| unknown | member | - | - |
| ownsTenantTable | bool | - | - |

**Returns**: `error`



### ValidateTenantSchema(ctx: context.Context, pool: *pgxpool.Pool) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| pool | *pgxpool.Pool | - | - |

**Returns**: `error`



### inspectTenantTables(ctx: context.Context, queryer: catalogQuerier) → ([]tenantTableSchema, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| queryer | catalogQuerier | - | - |

**Returns**: `([]tenantTableSchema, error)`



### inspectTenantForeignKeys(ctx: context.Context, queryer: catalogQuerier) → ([]tenantForeignKeySchema, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| queryer | catalogQuerier | - | - |

**Returns**: `([]tenantForeignKeySchema, error)`



### tenantSchemaViolations(tables: []tenantTableSchema, foreignKeys: []tenantForeignKeySchema)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tables | []tenantTableSchema | - | - |
| foreignKeys | []tenantForeignKeySchema | - | - |

**Returns**: (none)



### tenantPolicyIsCanonical(table: tenantTableSchema) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| table | tenantTableSchema | - | - |

**Returns**: `bool`



### normalizePolicyExpression(expression: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| expression | string | - | - |

**Returns**: `string`



### expressionHasEnclosingParens(expression: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| expression | string | - | - |

**Returns**: `bool`



### validateResolverSchema(ctx: context.Context, queryer: catalogQuerier) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| queryer | catalogQuerier | - | - |

**Returns**: `error`



### WithOrg(ctx: context.Context, pool: *pgxpool.Pool, orgID: string, fn: func(pgx.Tx) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| pool | *pgxpool.Pool | - | - |
| orgID | string | - | - |
| fn | func(pgx.Tx | - | - |

**Returns**: `error`


