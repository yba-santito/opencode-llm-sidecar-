# API Reference: payload_test.go

**Language**: Go

**Source**: `shared/platform/redact/payload_test.go`

---

## Functions

### mustPayload(t: *testing.T, body: []byte, rules: []Rule) → ([]byte, RedactionReport)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | []byte | - | - |
| rules | []Rule | - | - |

**Returns**: `([]byte, RedactionReport)`



### TestPayloadCatchesEveryBuiltin(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadPreservesSurroundingShape(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadDoesNotOverRedactOrdinaryNumbers(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadOrgRuleCannotDisableBuiltin(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadAppliesOrgRules(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadOrgReplacementIsLiteral(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadDeterministicAcrossRuleOrder(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadOverlappingOrgRulesResolveByPriority(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadFailsClosedOnBadRules(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadRejectsOversizeBody(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadReportNeverEchoesMatches(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadRuleSetHashTracksRules(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### adversarialBody(size: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| size | int | - | - |

**Returns**: (none)



### TestPayloadLargeAdversarialBodyAtDefaultCaptureCeiling(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadAllocationsDoNotScaleWithFiringRules(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### BenchmarkPayloadAdversarial4MiB(b: *testing.B)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | *testing.B | - | - |

**Returns**: (none)



### BenchmarkPayloadTypicalRequest(b: *testing.B)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | *testing.B | - | - |

**Returns**: (none)



### TestPayloadNilAndEmptyBody(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadDoesNotMutateInput(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadLabelledGovernmentIDs(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### payloadNoPrescreen(t: *testing.T, body: []byte, rules: []Rule)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | []byte | - | - |
| rules | []Rule | - | - |

**Returns**: (none)



### TestPayloadStalePrescreenCannotDropAMatch(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadNeedleIntroducersAreMarked(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadPrescreenPremisesHold(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadRedactsWeldedKeyAssignments(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadRedactsVendorPrefixedTokens(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadLabelledSSNGapWindow(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadBuiltinGroupsExistInTheirPatterns(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadDoesNotRedactNumericFieldsNamedLikeCredentials(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPayloadDoesNotShredCodeIdentifiers(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


