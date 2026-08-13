# API Reference: session_value.go

**Language**: Go

**Source**: `proxy/routing/session_value.go`

---

## Classes

### SessionValueFeatureSpec

**Inherits from**: (none)



### SessionValueLinearModel

**Inherits from**: (none)



### SessionValueActionModel

**Inherits from**: (none)



### SessionValuePolicyArtifact

**Inherits from**: (none)



### SessionValueFeatureValue

**Inherits from**: (none)



### SessionValueContext

**Inherits from**: (none)



### SessionValueRouter

**Inherits from**: (none)



### SessionValuePrediction

**Inherits from**: (none)



## Functions

### ValidateSessionValuePromotionEvidence(artifact: SessionValuePolicyArtifact) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| artifact | SessionValuePolicyArtifact | - | - |

**Returns**: `error`



### ComputeSessionValueArtifactHash(artifact: SessionValuePolicyArtifact) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| artifact | SessionValuePolicyArtifact | - | - |

**Returns**: `(string, error)`



### SealSessionValueArtifact(artifact: SessionValuePolicyArtifact) → (SessionValuePolicyArtifact, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| artifact | SessionValuePolicyArtifact | - | - |

**Returns**: `(SessionValuePolicyArtifact, error)`



### ValidateSessionValueArtifact(artifact: SessionValuePolicyArtifact, unknown: organizationID, unknown: projectID, candidatePoolHash: string, now: time.Time) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| artifact | SessionValuePolicyArtifact | - | - |
| unknown | organizationID | - | - |
| unknown | projectID | - | - |
| candidatePoolHash | string | - | - |
| now | time.Time | - | - |

**Returns**: `error`



### PickSession(features: Features, pool: []Candidate, alpha: float64, ctx: SessionValueContext) → (Decision, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| features | Features | - | - |
| pool | []Candidate | - | - |
| alpha | float64 | - | - |
| ctx | SessionValueContext | - | - |

**Returns**: `(Decision, error)`



### PredictSessionValueAction(artifact: SessionValuePolicyArtifact, actionID: string, ctx: SessionValueContext) → (SessionValuePrediction, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| artifact | SessionValuePolicyArtifact | - | - |
| actionID | string | - | - |
| ctx | SessionValueContext | - | - |

**Returns**: `(SessionValuePrediction, error)`



### predictSessionValueAction(artifact: SessionValuePolicyArtifact, model: SessionValueActionModel, unknown: vector, missing: []float64, unknown: immediate, transition: float64) → (SessionValuePrediction, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| artifact | SessionValuePolicyArtifact | - | - |
| model | SessionValueActionModel | - | - |
| unknown | vector | - | - |
| missing | []float64 | - | - |
| unknown | immediate | - | - |
| transition | float64 | - | - |

**Returns**: `(SessionValuePrediction, error)`



### sessionValueVector(specs: []SessionValueFeatureSpec, state: map[string]SessionValueFeatureValue) → ([]float64, []float64, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| specs | []SessionValueFeatureSpec | - | - |
| state | map[string]SessionValueFeatureValue | - | - |

**Returns**: `([]float64, []float64, error)`



### sessionValueEligibilityReason(features: Features, candidate: Candidate, baselineUnit: float64, policy: FrontierPolicy) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| features | Features | - | - |
| candidate | Candidate | - | - |
| baselineUnit | float64 | - | - |
| policy | FrontierPolicy | - | - |

**Returns**: `string`



### predictSessionValue(model: SessionValueLinearModel, unknown: values, missing: []float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | SessionValueLinearModel | - | - |
| unknown | values | - | - |
| missing | []float64 | - | - |

**Returns**: `float64`



### validateSessionValueLinearModel(model: SessionValueLinearModel, features: int) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | SessionValueLinearModel | - | - |
| features | int | - | - |

**Returns**: `error`



### logistic(value: float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | float64 | - | - |

**Returns**: `float64`



### probabilityMetric(value: float64) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | float64 | - | - |

**Returns**: `bool`



### validCompactPoolHash(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### validSHA256Ref(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### SessionValueFeatureNames()

**Returns**: (none)


