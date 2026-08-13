# API Reference: trial_store.go

**Language**: Go

**Source**: `proxy/internal/store/trial_store.go`

---

## Classes

### originRow

**Inherits from**: (none)



## Functions

### RecordPayload(unknown: label, unknown: requestID, traceID: string, body: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | label | - | - |
| unknown | requestID | - | - |
| traceID | string | - | - |
| body | []byte | - | - |

**Returns**: (none)



### StartTrial(unknown: trialID, unknown: agentSlug, command: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | trialID | - | - |
| unknown | agentSlug | - | - |
| command | string | - | - |

**Returns**: `error`



### FinishTrial(trialID: string, exitCode: int) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| trialID | string | - | - |
| exitCode | int | - | - |

**Returns**: `error`



### LatestTrialID() → (string, error)

**Returns**: `(string, error)`



### InsertUsageEvents(events: []UsageEvent) → (int, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| events | []UsageEvent | - | - |

**Returns**: `(int, error)`



### InsertQuotaEvents(events: []QuotaEvent) → (int, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| events | []QuotaEvent | - | - |

**Returns**: `(int, error)`



### DeleteQuotaProvider(provider: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |

**Returns**: `error`



### AnalyzeTrial(unknown: trialID, ccrPath: string) → (TrialPlan, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | trialID | - | - |
| ccrPath | string | - | - |

**Returns**: `(TrialPlan, error)`



### BuildTrialPlan(trialID: string) → (TrialPlan, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| trialID | string | - | - |

**Returns**: `(TrialPlan, error)`



### requestOrigins(trialID: string) → ([]originRow, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| trialID | string | - | - |

**Returns**: `([]originRow, error)`



### importedOrigins() → ([]originRow, error)

**Returns**: `([]originRow, error)`



### latestQuotaSnapshots() → ([]QuotaSnapshot, error)

**Returns**: `([]QuotaSnapshot, error)`



### trialMoves(trialID: string, plan: TrialPlan) → ([]TrialMove, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| trialID | string | - | - |
| plan | TrialPlan | - | - |

**Returns**: `([]TrialMove, error)`



### heuristicMoves(_: string, plan: TrialPlan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | string | - | - |
| plan | TrialPlan | - | - |

**Returns**: (none)



### sanitizeStoredTrialMove(move: TrialMove) → (TrialMove, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| move | TrialMove | - | - |

**Returns**: `(TrialMove, bool)`



### hasTrialMoveStatus(moves: []TrialMove, unknown: optimizerID, status: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| moves | []TrialMove | - | - |
| unknown | optimizerID | - | - |
| status | string | - | - |

**Returns**: `bool`



### replayCompressionMove(unknown: trialID, ccrPath: string) → (TrialMove, string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | trialID | - | - |
| ccrPath | string | - | - |

**Returns**: `(TrialMove, string, error)`



### replayAdapter(provider: string) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |

**Returns**: `providers`



### upsertMove(trialID: string, move: TrialMove, evidence: map[string]any) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| trialID | string | - | - |
| move | TrialMove | - | - |
| evidence | map[string]any | - | - |

**Returns**: `error`



### latestLearnings() → ([]Learning, error)

**Returns**: `([]Learning, error)`



### insertLearning(l: Learning) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| l | Learning | - | - |

**Returns**: `error`



### hasEstimatedOrigin(origins: []UsageOrigin) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| origins | []UsageOrigin | - | - |

**Returns**: `bool`



### hasUnpricedOrigin(origins: []UsageOrigin) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| origins | []UsageOrigin | - | - |

**Returns**: `bool`



### appendUnique(values: []string, next: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | []string | - | - |
| next | string | - | - |

**Returns**: (none)



### nonEmpty(unknown: v, fallback: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | v | - | - |
| fallback | string | - | - |

**Returns**: `string`



### nonNegativeInt64(v: int64) → int64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | int64 | - | - |

**Returns**: `int64`



### normalizeUsageBasis(v: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | string | - | - |

**Returns**: `string`



### normalizeQuotaBasis(v: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | string | - | - |

**Returns**: `string`



### roundUSD(v: float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | float64 | - | - |

**Returns**: `float64`



### logStoreWarning(logger: *slog.Logger, msg: string, err: error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| logger | *slog.Logger | - | - |
| msg | string | - | - |
| err | error | - | - |

**Returns**: (none)


