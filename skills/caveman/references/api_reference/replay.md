# API Reference: replay.go

**Language**: Go

**Source**: `cacheengine/cachebench/replay.go`

---

## Classes

### VerificationCommandInput

**Inherits from**: (none)



### VerificationCommandOutput

**Inherits from**: (none)



### ReplayLimits

**Inherits from**: (none)



### ReplayPreflight

**Inherits from**: (none)



### ReplayRunError

**Inherits from**: (none)



### ReplayOutbound

**Inherits from**: (none)



### ReplayResponse

**Inherits from**: (none)



### ReplayVerificationInput

**Inherits from**: (none)



### ReplayEvidenceRecord

**Inherits from**: (none)



### ReplayResult

**Inherits from**: (none)



### LatencyDistribution

**Inherits from**: (none)



### ProviderReplaySummary

**Inherits from**: (none)



### ReplayEvidenceSummary

**Inherits from**: (none)



### accumulator

**Inherits from**: (none)



### ReplayRunner

**Inherits from**: (none)



### preparedReplay

**Inherits from**: (none)



## Functions

### ParseVerificationCommandOutput(raw: []byte, requestID: string) → (TaskVerification, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |
| requestID | string | - | - |

**Returns**: `(TaskVerification, error)`



### Error() → string

**Returns**: `string`



### Unwrap() → error

**Returns**: `error`



### Send(ctx: context.Context, request: ReplayOutbound) → (ReplayResponse, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| request | ReplayOutbound | - | - |

**Returns**: `(ReplayResponse, error)`



### Verify(ctx: context.Context, input: ReplayVerificationInput) → (TaskVerification, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| input | ReplayVerificationInput | - | - |

**Returns**: `(TaskVerification, error)`



### SummarizeReplayEvidence(records: []ReplayEvidenceRecord) → (ReplayEvidenceSummary, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| records | []ReplayEvidenceRecord | - | - |

**Returns**: `(ReplayEvidenceSummary, error)`



### summarizeLatency(values: []int64) → LatencyDistribution

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | []int64 | - | - |

**Returns**: `LatencyDistribution`



### ValidateReplay(records: []TraceRecord, limits: ReplayLimits, timeScale: float64) → (ReplayPreflight, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| records | []TraceRecord | - | - |
| limits | ReplayLimits | - | - |
| timeScale | float64 | - | - |

**Returns**: `(ReplayPreflight, error)`



### ValidateReplayTarget(records: []TraceRecord, target: Target) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| records | []TraceRecord | - | - |
| target | Target | - | - |

**Returns**: `error`



### Run(ctx: context.Context, records: []TraceRecord, emit: func(ReplayResult) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| records | []TraceRecord | - | - |
| emit | func(ReplayResult | - | - |

**Returns**: `error`



### prepare(ctx: context.Context, records: []TraceRecord) → ([]preparedReplay, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| records | []TraceRecord | - | - |

**Returns**: `([]preparedReplay, error)`



### validatePreparedReplayTarget(prepared: []preparedReplay, target: Target) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| prepared | []preparedReplay | - | - |
| target | Target | - | - |

**Returns**: `error`



### runSequential(ctx: context.Context, prepared: []preparedReplay, unknown: anchorTrace, anchorReal: time.Time, now: func() → time

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| prepared | []preparedReplay | - | - |
| unknown | anchorTrace | - | - |
| anchorReal | time.Time | - | - |
| now | func( | - | - |

**Returns**: `time`



### runConcurrent(ctx: context.Context, prepared: []preparedReplay, unknown: anchorTrace, anchorReal: time.Time, now: func() → time

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| prepared | []preparedReplay | - | - |
| unknown | anchorTrace | - | - |
| anchorReal | time.Time | - | - |
| now | func( | - | - |

**Returns**: `time`



### executePrepared(ctx: context.Context, item: preparedReplay, evidence: ReplayEvidenceRecord, started: time.Time, now: func() → time

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| item | preparedReplay | - | - |
| evidence | ReplayEvidenceRecord | - | - |
| started | time.Time | - | - |
| now | func( | - | - |

**Returns**: `time`



### replayEvidenceBase(record: TraceRecord, optimized: cacheengine.NativeResult, scale: float64, unknown: scheduled, started: time.Time, tolerance: time.Duration) → ReplayEvidenceRecord

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| record | TraceRecord | - | - |
| optimized | cacheengine.NativeResult | - | - |
| scale | float64 | - | - |
| unknown | scheduled | - | - |
| started | time.Time | - | - |
| tolerance | time.Duration | - | - |

**Returns**: `ReplayEvidenceRecord`



### scaledReplayGap(gap: time.Duration, scale: float64) → (time.Duration, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| gap | time.Duration | - | - |
| scale | float64 | - | - |

**Returns**: `(time.Duration, error)`



### sleepContext(ctx: context.Context, delay: time.Duration) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| delay | time.Duration | - | - |

**Returns**: `error`



### WriteReplayEvidenceJSON(writer interface{: Write([]byte) → (int, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| writer interface{ | Write([]byte | - | - |

**Returns**: `(int, error)`



### emitValidatedReplayResult(emit: func(ReplayResult) → error, result

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| emit | func(ReplayResult | - | - |

**Returns**: `error, result`



### validateReplayResult(result: ReplayResult) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| result | ReplayResult | - | - |

**Returns**: `error`



### validTaskVerification(verification: TaskVerification) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| verification | TaskVerification | - | - |

**Returns**: `bool`



### validProviderRequestID(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### validateReplayEvidence(record: ReplayEvidenceRecord) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| record | ReplayEvidenceRecord | - | - |

**Returns**: `error`



### validReplayFailureCode(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### absDuration(value: time.Duration) → time

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | time.Duration | - | - |

**Returns**: `time`


