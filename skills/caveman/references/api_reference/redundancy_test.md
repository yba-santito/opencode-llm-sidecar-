# API Reference: redundancy_test.go

**Language**: Go

**Source**: `engine/compressors/redundancy_test.go`

---

## Functions

### bibliographyLike()

**Returns**: (none)



### assertNothingElided(t: *testing.T, unknown: input, out: []byte, ok: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | input | - | - |
| out | []byte | - | - |
| ok | bool | - | - |

**Returns**: (none)



### TestElisionRefusesDocumentOfDistinctRecords(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestElisionKeepsOneRepresentativeOfEachClass(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestElisionTreatsDigitVaryingLinesAsOneClass(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestElisionRefusesLogOfDistinctLines(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestJSONElisionRefusesArrayOfDistinctRecords(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestJSONElisionStillCollapsesRepeatedRecords(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### BenchmarkElisionGateOnLargeDistinctPayload(b: *testing.B)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | *testing.B | - | - |

**Returns**: (none)



### TestElisionIsDeterministic(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


