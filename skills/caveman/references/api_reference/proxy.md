# API Reference: proxy.go

**Language**: Go

**Source**: `proxy/internal/gateway/proxy.go`

---

## Classes

### requestEvidence

**Inherits from**: (none)



### compiledRoute

**Inherits from**: (none)



### estimateOutcome

**Inherits from**: (none)



### compressionOutcome

**Inherits from**: (none)



### rewritableBlock

**Inherits from**: (none)



### countingWriter

**Inherits from**: (none)



## Functions

### proxy(w: http.ResponseWriter, r: *http.Request)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| w | http.ResponseWriter | - | - |
| r | *http.Request | - | - |

**Returns**: (none)



### providerPrefixEvidence(adapter: providers.Adapter, body: []byte, meta: providers.RequestMetadata) → (string, string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |

**Returns**: `(string, string, bool)`



### requestEvidenceFromHeaders(headers: http.Header) → requestEvidence

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| headers | http.Header | - | - |

**Returns**: `requestEvidence`



### boundedEvidenceToken(value: string, limit: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |
| limit | int | - | - |

**Returns**: `string`



### boundedEvidenceValue(value: string, limit: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |
| limit | int | - | - |

**Returns**: `string`



### compiledPlanAllowsCompression(headers: http.Header) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| headers | http.Header | - | - |

**Returns**: `bool`



### compiledPlanCompression(headers: http.Header) → (contentType, transformID string, allowed bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| headers | http.Header | - | - |

**Returns**: `(contentType, transformID string, allowed bool)`



### compiledPlanRoutes(headers: http.Header) → ([]compiledRoute, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| headers | http.Header | - | - |

**Returns**: `([]compiledRoute, bool)`



### compiledContentType(transformID: string) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| transformID | string | - | - |

**Returns**: `(string, bool)`



### validCompiledSegmentKind(kind: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| kind | string | - | - |

**Returns**: `bool`



### validGatewayDigest(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### cacheEpochAllows(r: *http.Request, adapter: providers.Adapter, meta: providers.RequestMetadata, body: []byte, sessionID: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | *http.Request | - | - |
| adapter | providers.Adapter | - | - |
| meta | providers.RequestMetadata | - | - |
| body | []byte | - | - |
| sessionID | string | - | - |

**Returns**: `bool`



### derivedEpochAllows(adapter: providers.Adapter, meta: providers.RequestMetadata, body: []byte, sessionID: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |
| meta | providers.RequestMetadata | - | - |
| body | []byte | - | - |
| sessionID | string | - | - |

**Returns**: `bool`



### estimateRequest(adapter: providers.Adapter, body: []byte, meta: providers.RequestMetadata)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |

**Returns**: (none)



### normalizeAgentPath(r: *http.Request) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | *http.Request | - | - |

**Returns**: `bool`



### recoveryHandles()

**Returns**: (none)



### extractRewritable(adapter: providers.Adapter, body: []byte, meta: providers.RequestMetadata, requireSemantics: bool) → ([]rewritableBlock, func([][]byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |
| requireSemantics | bool | - | - |

**Returns**: `([]rewritableBlock, func([][]byte)`



### compressRequest(adapter: providers.Adapter, body: []byte, meta: providers.RequestMetadata, transform: *providers.TransformResult, requestID: string, lockedRoutes: []compiledRoute)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |
| transform | *providers.TransformResult | - | - |
| requestID | string | - | - |
| lockedRoutes | []compiledRoute | - | - |

**Returns**: (none)



### joinRecoveryHandles(handles: []string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| handles | []string | - | - |

**Returns**: `string`



### appendCCRMarker(out: []byte, handle: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| out | []byte | - | - |
| handle | string | - | - |

**Returns**: (none)



### matchAdapter(r: *http.Request) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | *http.Request | - | - |

**Returns**: `providers`



### record(start: time.Time, ttfb: int64, unknown: requestID, traceID: string, rc: RequestContext, meta: providers.RequestMetadata, authMode: AuthMode, status: int, responseBytes: int64, requestBytes: int, unknown: rawHash, transformedHash: [32]byte, errorCode: string, optimizers: []string, usage: providers.UsageObservation, comp: *compressionOutcome, toolSchemaHandle: string, retrieved: bool, estimate: *estimateOutcome, evidence: requestEvidence, unknown: providerCachePrefixSHA256, providerCacheComponentSHA256: string, unknown: cacheBoundaryKnown, unknown: cacheBust, compressionEligible: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| start | time.Time | - | - |
| ttfb | int64 | - | - |
| unknown | requestID | - | - |
| traceID | string | - | - |
| rc | RequestContext | - | - |
| meta | providers.RequestMetadata | - | - |
| authMode | AuthMode | - | - |
| status | int | - | - |
| responseBytes | int64 | - | - |
| requestBytes | int | - | - |
| unknown | rawHash | - | - |
| transformedHash | [32]byte | - | - |
| errorCode | string | - | - |
| optimizers | []string | - | - |
| usage | providers.UsageObservation | - | - |
| comp | *compressionOutcome | - | - |
| toolSchemaHandle | string | - | - |
| retrieved | bool | - | - |
| estimate | *estimateOutcome | - | - |
| evidence | requestEvidence | - | - |
| unknown | providerCachePrefixSHA256 | - | - |
| providerCacheComponentSHA256 | string | - | - |
| unknown | cacheBoundaryKnown | - | - |
| unknown | cacheBust | - | - |
| compressionEligible | bool | - | - |

**Returns**: (none)



### costBreakdown(provider: string, price: cost.Price, usage: providers.UsageObservation) → (inputCost, outputCost, cachedCost float64)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| price | cost.Price | - | - |
| usage | providers.UsageObservation | - | - |

**Returns**: `(inputCost, outputCost, cachedCost float64)`



### standalonePriceForUsage(meta: providers.RequestMetadata, usage: providers.UsageObservation) → cost

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| meta | providers.RequestMetadata | - | - |
| usage | providers.UsageObservation | - | - |

**Returns**: `cost`



### scaleStandaloneTokenRates(price: cost.Price, multiplier: float64) → cost

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| price | cost.Price | - | - |
| multiplier | float64 | - | - |

**Returns**: `cost`



### standaloneUsageBasis(usage: providers.UsageObservation) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| usage | providers.UsageObservation | - | - |

**Returns**: `string`



### standaloneCompressionBasis(comp: *compressionOutcome) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| comp | *compressionOutcome | - | - |

**Returns**: `string`



### cacheSavingsUSD(price: cost.Price, usage: providers.UsageObservation, optimizers: []string) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| price | cost.Price | - | - |
| usage | providers.UsageObservation | - | - |
| optimizers | []string | - | - |

**Returns**: `float64`



### hasCacheOptimizer(optimizers: []string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| optimizers | []string | - | - |

**Returns**: `bool`



### hasCompressionOptimizer(optimizers: []string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| optimizers | []string | - | - |

**Returns**: `bool`



### compressionSavingsUSD(price: cost.Price, unknown: before, after: int, optimizers: []string, usage: providers.UsageObservation) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| price | cost.Price | - | - |
| unknown | before | - | - |
| after | int | - | - |
| optimizers | []string | - | - |
| usage | providers.UsageObservation | - | - |

**Returns**: `float64`



### labelOrDefault(unknown: v, fallback: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | v | - | - |
| fallback | string | - | - |

**Returns**: `string`



### Write(p: []byte) → (int, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | []byte | - | - |

**Returns**: `(int, error)`



### copyFlush(dst: *countingWriter, src: io.Reader) → (int64, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| dst | *countingWriter | - | - |
| src | io.Reader | - | - |

**Returns**: `(int64, error)`



### traceIDFrom(r: *http.Request) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | *http.Request | - | - |

**Returns**: `string`


