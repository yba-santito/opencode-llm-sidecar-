# API Reference: routing.go

**Language**: Go

**Source**: `proxy/routing/routing.go`

---

## Classes

### Features

**Inherits from**: (none)



### RouteAction

**Inherits from**: (none)



### Candidate

**Inherits from**: (none)



### Decision

**Inherits from**: (none)



### RulesRouter

**Inherits from**: (none)



### RulesV1Router

**Inherits from**: (none)



### FrontierRouter

**Inherits from**: (none)



### FrontierPolicy

**Inherits from**: (none)



### CandidateHealth

**Inherits from**: (none)



### MergedSpecialist

**Inherits from**: (none)



### frontierBounds

**Inherits from**: (none)



## Functions

### Pick(f: Features, pool: []Candidate, alpha: float64) → (Decision, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | Features | - | - |
| pool | []Candidate | - | - |
| alpha | float64 | - | - |

**Returns**: `(Decision, error)`



### Pick(f: Features, pool: []Candidate, alpha: float64) → (Decision, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | Features | - | - |
| pool | []Candidate | - | - |
| alpha | float64 | - | - |

**Returns**: `(Decision, error)`



### pickRulesV1(f: Features, pool: []Candidate, alpha: float64, policy: FrontierPolicy) → (Decision, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | Features | - | - |
| pool | []Candidate | - | - |
| alpha | float64 | - | - |
| policy | FrontierPolicy | - | - |

**Returns**: `(Decision, error)`



### alphaIndex(alpha: float64, n: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| alpha | float64 | - | - |
| n | int | - | - |

**Returns**: `int`



### unitPrice(p: cost.Price) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | cost.Price | - | - |

**Returns**: `float64`



### rulesRejectReason(f: Features, c: Candidate, baselineUnit: float64) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | Features | - | - |
| c | Candidate | - | - |
| baselineUnit | float64 | - | - |

**Returns**: `string`



### policyRejectReason(f: Features, c: Candidate, baselineUnit: float64, policy: FrontierPolicy) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | Features | - | - |
| c | Candidate | - | - |
| baselineUnit | float64 | - | - |
| policy | FrontierPolicy | - | - |

**Returns**: `string`



### frontierRejectReason(f: Features, c: Candidate, baselineUnit: float64, policy: FrontierPolicy) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | Features | - | - |
| c | Candidate | - | - |
| baselineUnit | float64 | - | - |
| policy | FrontierPolicy | - | - |

**Returns**: `string`



### candidateQualityFloor(policy: FrontierPolicy, predicted: []Candidate, baselineModel: string) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| policy | FrontierPolicy | - | - |
| predicted | []Candidate | - | - |
| baselineModel | string | - | - |

**Returns**: `float64`



### frontierBoundsFor(candidates: []Candidate) → frontierBounds

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| candidates | []Candidate | - | - |

**Returns**: `frontierBounds`



### frontierUtility(c: Candidate, alpha: float64, bounds: frontierBounds) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | Candidate | - | - |
| alpha | float64 | - | - |
| bounds | frontierBounds | - | - |

**Returns**: `float64`



### frontierLess(unknown: left, right: Candidate, alpha: float64, bounds: frontierBounds) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | left | - | - |
| right | Candidate | - | - |
| alpha | float64 | - | - |
| bounds | frontierBounds | - | - |

**Returns**: `bool`



### paretoCandidates(candidates: []Candidate, rejected: map[string]string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| candidates | []Candidate | - | - |
| rejected | map[string]string | - | - |

**Returns**: (none)



### candidateDominates(unknown: left, right: Candidate) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | left | - | - |
| right | Candidate | - | - |

**Returns**: `bool`



### frontierLatencyMS(c: Candidate) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | Candidate | - | - |

**Returns**: `int`



### normalizedRegret(unknown: numerator, denominator: float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | numerator | - | - |
| denominator | float64 | - | - |

**Returns**: `float64`



### normalizedAlpha(alpha: float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| alpha | float64 | - | - |

**Returns**: `float64`



### finite(value: float64) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | float64 | - | - |

**Returns**: `bool`



### expectedCostUSD(c: Candidate) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | Candidate | - | - |

**Returns**: `float64`



### expectedP95LatencyMS(c: Candidate) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | Candidate | - | - |

**Returns**: `int`



### denylisted(c: Candidate, denylist: []string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | Candidate | - | - |
| denylist | []string | - | - |

**Returns**: `bool`



### residencyRejectReason(c: Candidate, allowed: []string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | Candidate | - | - |
| allowed | []string | - | - |

**Returns**: `string`



### mergedSpecialistReady(s: MergedSpecialist) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | MergedSpecialist | - | - |

**Returns**: `bool`



### candidateSupports(c: Candidate, f: Features) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | Candidate | - | - |
| f | Features | - | - |

**Returns**: `bool`



### contextFits(caps: map[string]any, inputBytes: int) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| caps | map[string]any | - | - |
| inputBytes | int | - | - |

**Returns**: `bool`



### endpointCapability(unknown: provider, endpoint: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| endpoint | string | - | - |

**Returns**: `string`



### contains(unknown: s, substr: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | s | - | - |
| substr | string | - | - |

**Returns**: `bool`



### CandidateLabel(c: Candidate) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | Candidate | - | - |

**Returns**: `string`



### CandidateTraceKey(c: Candidate) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | Candidate | - | - |

**Returns**: `string`



### CandidateActionID(c: Candidate) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | Candidate | - | - |

**Returns**: `string`



### CandidatePoolHash(candidates: []Candidate) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| candidates | []Candidate | - | - |

**Returns**: `string`



### boolCap(caps: map[string]any, key: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| caps | map[string]any | - | - |
| key | string | - | - |

**Returns**: `bool`



### anyBoolCap(caps: map[string]any, keys: ...string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| caps | map[string]any | - | - |
| keys | ...string | - | - |

**Returns**: `bool`



### numericCap(caps: map[string]any, key: string) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| caps | map[string]any | - | - |
| key | string | - | - |

**Returns**: `float64`


