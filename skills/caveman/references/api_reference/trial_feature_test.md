# API Reference: trial_feature_test.go

**Language**: Go

**Source**: `proxy/internal/store/trial_feature_test.go`

---

## Functions

### TestTrialPayloadCaptureOnlyTrialLabel(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUsageImportsCodexClaudeAndReportRedactsRawContent(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAnalyzeTrialWithoutPayloadIsInsufficientData(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAnalyzeTrialBoundsAggregatePayloadReplay(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAnalyzeTrialCompressionReplayReportsTokenShapeWithZeroDollars(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTrialReportKeepsImportedHistoryContextual(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestExportTrialWritesSpansWithoutPayloads(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestHeuristicProviderAndCostAloneEmitNoCacheMove(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestHeuristicModelNameDoesNotReactivateRetiredRoutingMove(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLegacyUnsafeTrialRowsFailClosed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestScopedTrialMovesIgnoreImportedContext(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### writeClaudeProject(t: *testing.T, unknown: root, unknown: slug, file: string, lines: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | root | - | - |
| unknown | slug | - | - |
| file | string | - | - |
| lines | []string | - | - |

**Returns**: (none)



### TestClaudeImporterReadsProjectsRealUsage(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestInsertedUsageCannotSelfPromoteOrPoisonTotals(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestImportedOpenAIUsagePricesOverlappingDetailsOnce(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestImportedUsageHonorsDistinctReasoningRate(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestImportedAnthropicUsagePricesDisjointCacheBucketsWhenBillingEvidenceExists(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCodexCumulativeTotalWithoutBucketsIsNeverMispriced(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestImportSummaryUsesWeakestTokenBasis(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCodexBehaviorDoesNotDoubleCountCachedInputSubset(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnConfigSinksAndCavemem(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnBehaviorDumbzoneAndSubagent(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnHonestyAndScoreTransparency(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnIsReadOnly(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnHTMLReport(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### claudeUserTurn(t: *testing.T, unknown: ts, text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | ts | - | - |
| text | string | - | - |

**Returns**: `string`



### recurringBlock(extra: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| extra | string | - | - |

**Returns**: `string`



### sinkByPrefix(plan: LearnPlan, prefix: string) → (Sink, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plan | LearnPlan | - | - |
| prefix | string | - | - |

**Returns**: `(Sink, bool)`



### TestLearnRecurringContextSink(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRecurringEvidenceNoRawBody(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRecurringBelowThreshold(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### hasSink(plan: LearnPlan, id: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plan | LearnPlan | - | - |
| id | string | - | - |

**Returns**: `bool`



### sinkIDs(plan: LearnPlan) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plan | LearnPlan | - | - |

**Returns**: `string`



### componentByKey(score: CaveScore, key: string) → ScoreComponent

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| score | CaveScore | - | - |
| key | string | - | - |

**Returns**: `ScoreComponent`



### dirFingerprint(t: *testing.T, dir: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| dir | string | - | - |

**Returns**: `string`



### fmtInt(v: int64) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | int64 | - | - |

**Returns**: `string`



### gatewayRecord(unknown: label, unknown: provider, model: string, unknown: input, output: int, cost: float64) → gateway

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | label | - | - |
| unknown | provider | - | - |
| model | string | - | - |
| unknown | input | - | - |
| output | int | - | - |
| cost | float64 | - | - |

**Returns**: `gateway`


