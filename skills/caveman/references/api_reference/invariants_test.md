# API Reference: invariants_test.go

**Language**: Go

**Source**: `engine/compressors/invariants_test.go`

---

## Functions

### elidedBytesFor(want: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| want | int | - | - |

**Returns**: `int`



### fields(pairs: ...string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pairs | ...string | - | - |

**Returns**: (none)



### TestSummarizeElidedStatesOnlyWhatHoldsEverywhere(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSummarizeElidedRespectsItsBudget(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestIdentifierEnumerationsAreShedFirst(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBudgetShedsRangesBeforeEnumerations(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestEnumeratedCountsCoverEveryElidedUnit(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLogfmtFieldsExtraction(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRowFieldsSkipsUnnamedAndEmptyCells(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestObjectFieldsTakesScalarsInSortedOrder(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### ledgerCSV(rows: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rows | int | - | - |

**Returns**: (none)



### settleLog(lines: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lines | int | - | - |

**Returns**: (none)



### TestTabularMarkerCarriesRowInvariants(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLogMarkerCarriesLineInvariants(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestJSONMarkerCarriesElementInvariants(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUnstructuredRunsKeepTheBareMarker(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSmallElisionsDoNotBuyTheContractLine(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestEnrichedMarkersAreIdempotent(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestStatedInvariantsAreLiterallyTrue(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCoverageShedPriority(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTinyClassesAreNotElided(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTinyCSVClassesAreNotElided(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTinyLogClassesAreNotElided(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestNDJSONLinesSummarizeAsEvents(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


