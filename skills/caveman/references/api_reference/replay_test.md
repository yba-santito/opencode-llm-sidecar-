# API Reference: replay_test.go

**Language**: Go

**Source**: `cacheengine/cachebench/replay_test.go`

---

## Functions

### TestReplayRunnerProducesBoundObservedPopulation(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestReplayRunnerPreservesBelowMinimumPopulation(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestReplayRunnerRejectsKnownEngineFailureBeforeProviderTraffic(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestReplayRunnerRejectsInsufficientEngineEligiblePopulationBeforeTraffic(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestReplayPreflightFailsClosed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestReplayTargetFailsBeforeUnmeetablePopulation(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestReplayRunnerFailsWhenProviderExceedsDeclaredInputCeiling(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestReplayRunnerFailsWhenProviderExceedsOutputCeiling(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestReplayRunnerRejectsMalformedEmbeddedProviderAndVerifierEvidence(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestReplayRunnerFailsClosedOnClockRegression(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestReplayRunnerEmitsBoundFailureWithoutObservation(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestGroundedReplayAbortsWhenProviderLatencyBreaksAbsoluteSchedule(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestReplayRunnerBoundsConcurrentAbsoluteDispatch(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestVerificationCommandOutputRejectsDuplicateAndMismatchedEvidence(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestReplayEvidenceSummaryUsesSameValidatedPopulation(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### successfulReplayEvidence(provider: string, latency: int64, quality: bool) → ReplayEvidenceRecord

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| latency | int64 | - | - |
| quality | bool | - | - |

**Returns**: `ReplayEvidenceRecord`



### TestHTTPReplayTransportBuildsOfficialProviderRequests(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestHTTPReplayTransportSignsBedrockAndBoundsResponses(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestHTTPReplayTransportRejectsUnsafeBaseURLsAndRedirectCredentialForwarding(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestHTTPReplayTransportEnforcesRequestTimeout(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestHTTPReplayTransportBoundsRequestsAndRejectsControlCharacters(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTraceAndReplayEvidenceRejectControlCharacters(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTraceReaderEnforcesRecordAndBodyLimitsBeforeReplay(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### FuzzTraceJSONLFailClosed(f: *testing.F)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | *testing.F | - | - |

**Returns**: (none)



### FuzzVerificationCommandOutputFailClosed(f: *testing.F)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | *testing.F | - | - |

**Returns**: (none)



### replayTraceRecords(t interface {: Helper() → Fatal

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t interface { | Helper( | - | - |

**Returns**: `Fatal`



### RoundTrip(request: *http.Request) → (*http.Response, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | *http.Request | - | - |

**Returns**: `(*http.Response, error)`


