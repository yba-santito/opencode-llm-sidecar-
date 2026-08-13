# API Reference: optimizers.go

**Language**: Go

**Source**: `shared/platform/optimizers/optimizers.go`

---

## Classes

### ReportOnlyOpportunityContract

**Inherits from**: (none)



### EnablementOnlyOpportunityContract

**Inherits from**: (none)



### Family

**Inherits from**: (none)



## Functions

### IsReportProjectionOnlyOpportunity(optimizerID: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| optimizerID | string | - | - |

**Returns**: `bool`



### ReportOnlyOpportunityContractFor(optimizerID: string) → (ReportOnlyOpportunityContract, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| optimizerID | string | - | - |

**Returns**: `(ReportOnlyOpportunityContract, bool)`



### ReportOnlyOpportunityContracts()

**Returns**: (none)



### ReportOnlyBandMethodForOpportunity(optimizerID: string) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| optimizerID | string | - | - |

**Returns**: `(string, bool)`



### ReportOnlyOpportunityIDsForBand(bandMethod: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| bandMethod | string | - | - |

**Returns**: (none)



### IsEnablementOnlyOpportunity(optimizerID: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| optimizerID | string | - | - |

**Returns**: `bool`



### EnablementOnlyOpportunityContractFor(optimizerID: string) → (EnablementOnlyOpportunityContract, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| optimizerID | string | - | - |

**Returns**: `(EnablementOnlyOpportunityContract, bool)`



### EnablementOnlyOpportunityContracts()

**Returns**: (none)



### IsReviewOnlyOpportunity(optimizerID: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| optimizerID | string | - | - |

**Returns**: `bool`



### IsRetiredOpportunity(optimizerID: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| optimizerID | string | - | - |

**Returns**: `bool`



### RetiredOpportunityIDs()

**Returns**: (none)



### FamilyIndexOf(optimizerID: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| optimizerID | string | - | - |

**Returns**: `int`



### FamilyNameOf(optimizerID: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| optimizerID | string | - | - |

**Returns**: `string`



### MembersSet(name: string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |

**Returns**: `map[string]`


