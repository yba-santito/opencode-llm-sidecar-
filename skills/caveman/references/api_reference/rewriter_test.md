# API Reference: rewriter_test.go

**Language**: Go

**Source**: `rewriter/rewriter_test.go`

---

## Classes

### recordedCall

**Inherits from**: (none)



## Functions

### fakeDoer(t: *testing.T, status: int, payload: string, calls: *[]recordedCall) → func

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| status | int | - | - |
| payload | string | - | - |
| calls | *[]recordedCall | - | - |

**Returns**: `func`



### anthropicPayloadStop(unknown: text, stop: string, unknown: in, out: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | text | - | - |
| stop | string | - | - |
| unknown | in | - | - |
| out | int | - | - |

**Returns**: `string`



### anthropicPayload(text: string, unknown: in, out: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| unknown | in | - | - |
| out | int | - | - |

**Returns**: `string`



### openAIPayloadFinish(unknown: text, finish: string, unknown: in, out: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | text | - | - |
| finish | string | - | - |
| unknown | in | - | - |
| out | int | - | - |

**Returns**: `string`



### openAIPayload(text: string, unknown: in, out: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| unknown | in | - | - |
| out | int | - | - |

**Returns**: `string`



### bigStep(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### newTestClient(t: *testing.T, cfg: Config)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| cfg | Config | - | - |

**Returns**: (none)



### TestRewriteAcceptedAnthropic(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRewriteAcceptedOpenAI(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOpenAITemperatureIsSentToModelsThatAcceptIt(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOpenAIAcceptsTemperature(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestProviderResponseIsBounded(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRewriteBelowThetaMakesNoCall(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRewriteThetaBoundary(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRewriteApplicationGateBoundary(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRewriteRejectsLossyRewrite(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRewriteEmptyCompletion(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRewriteAPIErrorFailsClosed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestNewValidation(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRecoveryPointerUsesTheEstablishedMarker(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRewriteRejectsTruncatedCompletion(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRewriteHandlesEnvelopeArtefacts(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestStripWrappingFence(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOutputCeiling(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


