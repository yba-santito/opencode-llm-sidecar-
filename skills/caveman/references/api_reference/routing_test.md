# API Reference: routing_test.go

**Language**: Go

**Source**: `proxy/routing/routing_test.go`

---

## Functions

### TestRulesRouterRequiresPricedBaseline(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRulesRouterPicksCheapestCapableAtAlphaZero(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRulesRouterAlphaOnePicksClosestCheaperCandidate(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRulesRouterRequiresEndpointCapability(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRulesRouterFailsClosedForUnknownDemandedCaps(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRulesRouterFailsClosedWhenContextCapMissingOrTooSmall(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRulesRouterFailsClosedForVisionWithoutCap(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRulesV1RejectsDegradedHealthAndWrongResidency(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFrontierV1QualityFloorBeatsCheapestPrice(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFrontierV1QualityDeltaIsRelativeToBaselineModel(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFrontierV1DialZeroPicksMostCapablePassingCandidate(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFrontierV1DecisionCarriesCanonicalActionIdentity(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFrontierV1TraceSeparatesEffortActionsForSameModel(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFrontierV1DialOnePicksCheapestPassingCandidate(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFrontierV1DialUsesNormalizedRegret(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFrontierV1DialTieBreaksByLatencyThenLabel(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFrontierV1DominatedOutlierCannotMoveDial(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### frontierDialFeatures() → Features

**Returns**: `Features`



### frontierDialCandidate(model: string, unknown: expectedCost, qualityLCB: float64, latencyMS: int) → Candidate

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |
| unknown | expectedCost | - | - |
| qualityLCB | float64 | - | - |
| latencyMS | int | - | - |

**Returns**: `Candidate`



### TestFrontierV1RequiresQualityLabels(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFrontierV1RejectsNonFinitePredictions(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestMergedSpecialistMustBeDeploymentReady(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### BenchmarkRulesV1RouterFiftyCandidates(b: *testing.B)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | *testing.B | - | - |

**Returns**: (none)



### BenchmarkFrontierV1RouterFiftyCandidates(b: *testing.B)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | *testing.B | - | - |

**Returns**: (none)



### benchmarkRouteInputs(n: int, frontier: bool) → (Features, []Candidate)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |
| frontier | bool | - | - |

**Returns**: `(Features, []Candidate)`



### price(unknown: input, output: float64) → cost

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | input | - | - |
| output | float64 | - | - |

**Returns**: `cost`



### candidate(unknown: provider, model: string, price: cost.Price, caps: map[string]any) → Candidate

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| model | string | - | - |
| price | cost.Price | - | - |
| caps | map[string]any | - | - |

**Returns**: `Candidate`



### caps(keys: ...string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| keys | ...string | - | - |

**Returns**: `map[string]`



### capsWithContext(contextTokens: float64, keys: ...string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| contextTokens | float64 | - | - |
| keys | ...string | - | - |

**Returns**: `map[string]`



### TestUnknownCapabilityIsFailClosedLikeAbsent(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCandidateActionIDSeparatesTupleFieldsAndEffort(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCandidatePoolHashIncludesEffortAndIsOrderInvariant(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### legacyCandidatePoolHashForTest(c: Candidate) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | Candidate | - | - |

**Returns**: `string`


