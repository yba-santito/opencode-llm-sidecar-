# API Reference: observed.go

**Language**: Go

**Source**: `cacheengine/cachebench/observed.go`

---

## Classes

### ObservationReadLimits

**Inherits from**: (none)



## Functions

### NewObservationRecord(unknown: requestID, unknown: provider, epoch: string, eligibleInputTokens: int, unknown: originalRequestBody, providerEvidence: []byte, result: cacheengine.NativeResult, verification: TaskVerification, rawUsage: []byte) → ObservationRecord

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | requestID | - | - |
| unknown | provider | - | - |
| epoch | string | - | - |
| eligibleInputTokens | int | - | - |
| unknown | originalRequestBody | - | - |
| providerEvidence | []byte | - | - |
| result | cacheengine.NativeResult | - | - |
| verification | TaskVerification | - | - |
| rawUsage | []byte | - | - |

**Returns**: `ObservationRecord`



### EvaluateObservedAgainstTrace(records: []ObservationRecord, trace: []TraceRecord, target: Target) → (Report, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| records | []ObservationRecord | - | - |
| trace | []TraceRecord | - | - |
| target | Target | - | - |

**Returns**: `(Report, error)`



### DefaultObservationReadLimits() → ObservationReadLimits

**Returns**: `ObservationReadLimits`



### ReadObservationJSONL(reader: io.Reader) → ([]ObservationRecord, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reader | io.Reader | - | - |

**Returns**: `([]ObservationRecord, error)`



### ReadObservationJSONLWithLimits(reader: io.Reader, limits: ObservationReadLimits) → ([]ObservationRecord, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reader | io.Reader | - | - |
| limits | ObservationReadLimits | - | - |

**Returns**: `([]ObservationRecord, error)`



### EvaluateObserved(records: []ObservationRecord, target: Target) → (Report, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| records | []ObservationRecord | - | - |
| target | Target | - | - |

**Returns**: `(Report, error)`



### validateObservationRecords(records: []ObservationRecord) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| records | []ObservationRecord | - | - |

**Returns**: `error`



### validSHA256(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### validEvidenceSHA256(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### evaluateObservedProvider(provider: string, records: []ObservationRecord, target: Target) → ProviderReport

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| records | []ObservationRecord | - | - |
| target | Target | - | - |

**Returns**: `ProviderReport`



### validObservedAttribution(provider: string, record: ObservationRecord) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| record | ObservationRecord | - | - |

**Returns**: `bool`



### hasOptimizer(values: []string, target: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | []string | - | - |
| target | string | - | - |

**Returns**: `bool`


