# API Reference: session_value_test.go

**Language**: Go

**Source**: `proxy/routing/session_value_test.go`

---

## Functions

### TestSessionValueRouterSelectsBySessionCostAndQuality(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSessionValueRouterAllowsSameModelDifferentEffortActions(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSessionValueRouterAppliesQualityDeltaRelativeToBaselineModel(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSessionValueRouterAllowsPolicyEligibleSubsetButBindsConfiguredPool(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSessionValueRouterFailsClosedOnArtifactStateOrCostMismatch(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestValidateSessionValueArtifactRejectsUnsortedAndMalformedPolicy(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### validSessionValueArtifact(t: *testing.T, pool: []Candidate, now: time.Time) → SessionValuePolicyArtifact

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| pool | []Candidate | - | - |
| now | time.Time | - | - |

**Returns**: `SessionValuePolicyArtifact`



### sessionValuePool()

**Returns**: (none)



### sessionValueFeatures() → Features

**Returns**: `Features`



### validSessionValueContext(pool: []Candidate, now: time.Time) → SessionValueContext

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pool | []Candidate | - | - |
| now | time.Time | - | - |

**Returns**: `SessionValueContext`



### cloneSessionValueContext(in: SessionValueContext) → SessionValueContext

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| in | SessionValueContext | - | - |

**Returns**: `SessionValueContext`



### cloneSessionValueArtifact(t: *testing.T, in: SessionValuePolicyArtifact) → SessionValuePolicyArtifact

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| in | SessionValuePolicyArtifact | - | - |

**Returns**: `SessionValuePolicyArtifact`



### linearFixture(intercept: float64, features: int, residual: float64) → SessionValueLinearModel

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| intercept | float64 | - | - |
| features | int | - | - |
| residual | float64 | - | - |

**Returns**: `SessionValueLinearModel`



### logitFixture(probability: float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| probability | float64 | - | - |

**Returns**: `float64`



### sortSessionValueActions(actions: []SessionValueActionModel)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| actions | []SessionValueActionModel | - | - |

**Returns**: (none)


