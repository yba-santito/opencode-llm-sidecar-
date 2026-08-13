# API Reference: learn_retro_test.go

**Language**: Go

**Source**: `proxy/internal/store/learn_retro_test.go`

---

## Classes

### retroFixture

**Inherits from**: (none)



## Functions

### retroLogPayload(tag: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tag | string | - | - |

**Returns**: `string`



### retroRepeatedBlock() → string

**Returns**: `string`



### writeRetroClaudeSessions(t: *testing.T, root: string, unknown: sessions, unknown: usageTurns, repeats: int, sharedPayload: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| root | string | - | - |
| unknown | sessions | - | - |
| unknown | usageTurns | - | - |
| repeats | int | - | - |
| sharedPayload | string | - | - |

**Returns**: (none)



### writeRetroUsageFreeSessions(t: *testing.T, root: string, unknown: sessions, repeats: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| root | string | - | - |
| unknown | sessions | - | - |
| repeats | int | - | - |

**Returns**: (none)



### newRetroFixture(t: *testing.T) → retroFixture

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: `retroFixture`



### openRetroTestStore(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### retroExpectedCut(t: *testing.T, texts: ...string) → int64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| texts | ...string | - | - |

**Returns**: `int64`



### familyTokens(retro: *LearnRetro, id: string) → (int64, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| retro | *LearnRetro | - | - |
| id | string | - | - |

**Returns**: `(int64, bool)`



### TestLearnRetroEmitsMeasuredBlock(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroCountsEachSegmentOnce(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroExcludesUsageFreeSessionsFromEveryFamily(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroFamilyLabelsNameTheirFix(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### writeRetroTranscript(t: *testing.T, unknown: root, name: string, lines: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | root | - | - |
| name | string | - | - |
| lines | []string | - | - |

**Returns**: (none)



### retroUsageLine(messageID: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messageID | string | - | - |

**Returns**: `string`



### retroUsageLineSized(messageID: string, inputTokens: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messageID | string | - | - |
| inputTokens | int | - | - |

**Returns**: `string`



### retroToolResultLine(t: *testing.T, payload: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| payload | string | - | - |

**Returns**: `string`



### retroTextLine(t: *testing.T, unknown: timestamp, text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | timestamp | - | - |
| text | string | - | - |

**Returns**: `string`



### TestLearnRetroDedupsUsageByMessageID(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBehaviorScanDedupsUsageByMessageID(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroStreamWeightsCutsByObservedTurns(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroStreamWeightsTimestampedRepeatedBlocks(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroStreamPreservesFractionalOccurrenceOrderAcrossFiles(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroStreamExcludesEarliestExactTimestampTie(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroRepeatedSizeSkewUsesOccurrenceSizes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRecurringPositionsAreRetroOnly(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroStreamOmitsUndatedRepeatedBlocks(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRetroStreamFamiliesShareOneResidencyCap(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroStreamExcludesSidechains(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### mustJSON(t: *testing.T, v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| v | any | - | - |

**Returns**: (none)



### TestLearnRetroStreamCapsResidencyByCountedContext(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroStreamCrossFileAttributionIsNewestFirst(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroStreamZeroWithoutLaterTurns(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroTimeBoxTruncatesNewestFirst(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBehaviorBudgetCannotErasePartialRetroResult(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRetroDiscoveryDeadlineReturnsMeasuredPartialResult(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestScanDeadlinesPollBeforeEveryLineParse(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTruncatedBeforeFirstParseDoesNotClaimUsageFreeSession(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRetroSessionPathsAreNewestFirst(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroFailsClosedWithoutEngine(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLearnRetroOmittedWithoutFlag(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


