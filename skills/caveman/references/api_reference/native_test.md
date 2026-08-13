# API Reference: native_test.go

**Language**: Go

**Source**: `cacheengine/native_test.go`

---

## Functions

### optimizeRequest(unknown: provider, unknown: model, unknown: endpoint, unknown: epoch, body: string) → NativeRequest

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| unknown | model | - | - |
| unknown | endpoint | - | - |
| unknown | epoch | - | - |
| body | string | - | - |

**Returns**: `NativeRequest`



### decodeObject(t: *testing.T, body: []byte) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | []byte | - | - |

**Returns**: `map[string]`



### TestOptimizeRejectsOversizedBodyBeforeResolver(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeHonorsCancellationBeforeResolver(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizePassesThroughInvalidIdentity(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeAnthropicCombinesStableAndRollingBreakpoints(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeOpenAI56AddsScopedKeyAndExplicitBreakpoint(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeOpenAI56KeepsStableAndRollingBreakpointWindow(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeOpenAI56ResponsesKeepsStableAndRollingBreakpointWindow(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeOpenAI56CapsBreakpointsAtStablePlusLatestThree(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeOpenAI56AnchorsAfterAllLeadingStableMessages(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeOpenAI56FallsBackToAffinityWhenNoMarkableBlock(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeRespectsCallerManagedCachingIdempotently(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeDetectsUnicodeEscapedCallerCacheKey(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeIgnoresCacheLikeToolSchemaProperty(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeDetectsProviderCacheMarkerAtActiveWirePath(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeGeminiImplicitAndUnsupportedStayByteIdentical(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUnknownBuiltInModelsFailClosedToOriginal(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBuiltInEndpointAndBodyModelMustMatch(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeRecordMalformedAndDriftFailOpenToOriginal(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOpenAIStableDigestIncludesMarkedLeadingMessage(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOpenAIStableDigestExcludesChangingFirstUserTask(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestNativeProfileProviderMismatchFailsClosed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBuiltInResolverCannotClaimUnsupportedWireTTL(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCustomDriverMakesNativeEngineProviderAgnostic(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCustomDriverEmptyBodyPassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCustomCallbacksCannotMutateCallerRequest(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCustomDriverInvalidOptimizerIdentityPassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCustomDriverOutputCannotExceedRequestByteLimit(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeConcurrentSameEpochKeepsOneStableTransform(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### FuzzOptimizeMalformedBuiltinsPassThrough(f: *testing.F)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | *testing.F | - | - |

**Returns**: (none)



### TestOptimizeBedrockReusesCatalogGatedCachePoints(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOptimizeBedrockInvokeAddsStableAndRollingCachePoints(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### containsString(values: []string, target: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | []string | - | - |
| target | string | - | - |

**Returns**: `bool`



### BenchmarkOptimizeOpenAIExplicit(b: *testing.B)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | *testing.B | - | - |

**Returns**: (none)


