# API Reference: tenantkey.go

**Language**: Go

**Source**: `shared/platform/tenantkey/tenantkey.go`

---

## Functions

### CavePlan(unknown: organizationID, projectID: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | organizationID | - | - |
| projectID | string | - | - |

**Returns**: `(string, error)`



### MonthlySpend(unknown: organizationID, unknown: projectID, month: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | organizationID | - | - |
| unknown | projectID | - | - |
| month | string | - | - |

**Returns**: `(string, error)`



### MonthlySpendEvent(unknown: organizationID, unknown: projectID, unknown: month, requestID: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | organizationID | - | - |
| unknown | projectID | - | - |
| unknown | month | - | - |
| requestID | string | - | - |

**Returns**: `(string, error)`



### projectPrefix(unknown: namespace, unknown: organizationID, projectID: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | namespace | - | - |
| unknown | organizationID | - | - |
| projectID | string | - | - |

**Returns**: `(string, error)`



### safePart(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`


