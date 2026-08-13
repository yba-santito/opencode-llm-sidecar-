# API Reference: adapter.go

**Language**: Go

**Source**: `proxy/providers/adapter.go`

---

## Classes

### requestPayloadHashKey

**Inherits from**: (none)



### Credential

**Inherits from**: (none)



### RequestMetadata

**Inherits from**: (none)



### TransformPolicy

**Inherits from**: (none)



### TransformResult

**Inherits from**: (none)



### UsageObservation

**Inherits from**: (none)



### ProviderError

**Inherits from**: (none)



### RouteContext

**Inherits from**: (none)



### RewritableBlock

**Inherits from**: (none)



### Base

**Inherits from**: (none)



### UsageScanner

**Inherits from**: (none)



## Functions

### WithRequestPayloadHash(ctx: context.Context, body: []byte) → context

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| body | []byte | - | - |

**Returns**: `context`



### RequestPayloadHash(ctx: context.Context) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |

**Returns**: `(string, bool)`



### ListPriceEligible(unknown: provider, authMode: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| authMode | string | - | - |

**Returns**: `bool`



### ApplyResolvedPricingRoute(meta: RequestMetadata, upstream: *url.URL) → RequestMetadata

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| meta | RequestMetadata | - | - |
| upstream | *url.URL | - | - |

**Returns**: `RequestMetadata`



### OptimizerEnabled(id: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | string | - | - |

**Returns**: `bool`



### EvalGateCleared(id: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | string | - | - |

**Returns**: `bool`



### OptimizerActive(id: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | string | - | - |

**Returns**: `bool`



### Complete() → bool

**Returns**: `bool`



### IsRecoveryToolName(name: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |

**Returns**: `bool`



### Name() → string

**Returns**: `string`



### MatchRoute(unknown: method, path: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | method | - | - |
| path | string | - | - |

**Returns**: `bool`



### ResolveUpstreamURL(ctx: context.Context, req: *http.Request, route: RouteContext) → (*url.URL, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| req | *http.Request | - | - |
| route | RouteContext | - | - |

**Returns**: `(*url.URL, error)`



### SanitizeAndMapHeaders(ctx: context.Context, req: *http.Request, credential: Credential, _: *url.URL) → (http.Header, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| req | *http.Request | - | - |
| credential | Credential | - | - |
| _ | *url.URL | - | - |

**Returns**: `(http.Header, error)`



### validGoogleQuotaProject(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### InspectRequest(ctx: context.Context, body: BodyReader, headers: http.Header) → (RequestMetadata, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| body | BodyReader | - | - |
| headers | http.Header | - | - |

**Returns**: `(RequestMetadata, error)`



### ApplyProviderNativeTransforms(ctx: context.Context, body: BodyReader, meta: RequestMetadata, transformPolicy: TransformPolicy) → (TransformResult, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| body | BodyReader | - | - |
| meta | RequestMetadata | - | - |
| transformPolicy | TransformPolicy | - | - |

**Returns**: `(TransformResult, error)`



### ExtractCompressible(body: []byte, meta: RequestMetadata) → ([][]byte, func([][]byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | RequestMetadata | - | - |

**Returns**: `([][]byte, func([][]byte)`



### ParseUsage(ctx: context.Context, responseHeaders: http.Header, streamOrBody: io.Reader) → (UsageObservation, io.Reader, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| responseHeaders | http.Header | - | - |
| streamOrBody | io.Reader | - | - |

**Returns**: `(UsageObservation, io.Reader, error)`



### NewUsageScanner(responseHeaders: http.Header)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| responseHeaders | http.Header | - | - |

**Returns**: (none)



### NewExternalUsageScanner(responseHeaders: http.Header, parse func(data: []byte, usage: *UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| responseHeaders | http.Header | - | - |
| parse func(data | []byte | - | - |
| usage | *UsageObservation | - | - |

**Returns**: (none)



### SetLimit(limit: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| limit | int | - | - |

**Returns**: (none)



### SetRequestID(id: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | string | - | - |

**Returns**: (none)



### Write(p: []byte) → (int, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | []byte | - | - |

**Returns**: `(int, error)`



### appendTail(p: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | []byte | - | - |

**Returns**: (none)



### Usage() → UsageObservation

**Returns**: `UsageObservation`



### normalizedContentEncoding(value: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `string`



### decodeAccountingBody(raw: []byte, contentEncoding: string, limit: int) → ([]byte, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |
| contentEncoding | string | - | - |
| limit | int | - | - |

**Returns**: `([]byte, string)`



### ParseUsageBytes(provider: string, data: []byte, usage: *UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| data | []byte | - | - |
| usage | *UsageObservation | - | - |

**Returns**: (none)



### hasGeminiFinishReason(value: any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |

**Returns**: `bool`



### hasGeminiPromptBlock(value: any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |

**Returns**: `bool`



### mergeUsageValue(provider: string, value: any, usage: *UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| value | any | - | - |
| usage | *UsageObservation | - | - |

**Returns**: (none)



### decodeUsageValue(data: []byte) → (any, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |

**Returns**: `(any, error)`



### decodeUsageObject(data: []byte, dst: *map[string]any) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| dst | *map[string]any | - | - |

**Returns**: `error`



### mergeUsage(provider: string, obj: map[string]any, usage: *UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| obj | map[string]any | - | - |
| usage | *UsageObservation | - | - |

**Returns**: (none)



### mergeRawUsageJSON(existing: json.RawMessage, next: map[string]any) → json

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| existing | json.RawMessage | - | - |
| next | map[string]any | - | - |

**Returns**: `json`



### mergeRawUsageMap(unknown: dst, src: map[string]any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | dst | - | - |
| src | map[string]any | - | - |

**Returns**: (none)



### largerNumber(unknown: a, b: any) → (any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | a | - | - |
| b | any | - | - |

**Returns**: `(any, bool)`



### usageNumber(v: any) → (float64, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `(float64, bool)`



### MarkRawUsageIncomplete(usage: *UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| usage | *UsageObservation | - | - |

**Returns**: (none)



### hasGeminiUsageKeys(u: map[string]any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| u | map[string]any | - | - |

**Returns**: `bool`



### mergeGeminiUsage(u: map[string]any, usage: *UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| u | map[string]any | - | - |
| usage | *UsageObservation | - | - |

**Returns**: (none)



### mergeSnakeUsage(provider: string, u: map[string]any, usage: *UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| u | map[string]any | - | - |
| usage | *UsageObservation | - | - |

**Returns**: (none)



### providerInputExcludesCache(provider: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |

**Returns**: `bool`



### usageInt(m: map[string]any, key: string, usage: *UsageObservation) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| m | map[string]any | - | - |
| key | string | - | - |
| usage | *UsageObservation | - | - |

**Returns**: `(int, bool)`



### aliasUsageInt(m: map[string]any, keys: []string, usage: *UsageObservation) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| m | map[string]any | - | - |
| keys | []string | - | - |
| usage | *UsageObservation | - | - |

**Returns**: `(int, bool)`



### mergeAliasValue(current: int, found: bool, next: int, usage: *UsageObservation) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| current | int | - | - |
| found | bool | - | - |
| next | int | - | - |
| usage | *UsageObservation | - | - |

**Returns**: `(int, bool)`



### nonNegativeInt(v: any) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `(int, bool)`



### checkedSum(a: int, aOK: bool, b: int, bOK: bool, usage: *UsageObservation) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| a | int | - | - |
| aOK | bool | - | - |
| b | int | - | - |
| bOK | bool | - | - |
| usage | *UsageObservation | - | - |

**Returns**: `(int, bool)`



### checkedAdd(unknown: a, b: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | a | - | - |
| b | int | - | - |

**Returns**: `(int, bool)`



### optionalInt(v: int, ok: bool) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | int | - | - |
| ok | bool | - | - |

**Returns**: `int`



### usageObjects(obj: map[string]any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |

**Returns**: (none)



### cacheStatusFor(usage: UsageObservation) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| usage | UsageObservation | - | - |

**Returns**: `string`



### MapProviderError(status: int, headers: http.Header, body: []byte) → ProviderError

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| status | int | - | - |
| headers | http.Header | - | - |
| body | []byte | - | - |

**Returns**: `ProviderError`



### copyIfPresent(unknown: dst, src: http.Header, name: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | dst | - | - |
| src | http.Header | - | - |
| name | string | - | - |

**Returns**: (none)



### appendUserAgent(existing: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| existing | string | - | - |

**Returns**: `string`



### modelFromPath(path: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `string`



### providerRequestID(h: http.Header) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| h | http.Header | - | - |

**Returns**: `string`



### responseServiceTier(h: http.Header) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| h | http.Header | - | - |

**Returns**: `string`



### requestPricingUnsupportedReason(provider: string, decoded: map[string]any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| decoded | map[string]any | - | - |

**Returns**: `string`



### tokenOnlyProviderTool(unknown: provider, toolType: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| toolType | string | - | - |

**Returns**: `bool`



### mergePricingQualifiers(obj: map[string]any, usage: *UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |
| usage | *UsageObservation | - | - |

**Returns**: (none)



### serviceTierFromObject(obj: map[string]any) → (tier string, present, valid bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |

**Returns**: `(tier string, present, valid bool)`



### mergeProviderOutcomeQualifiers(provider: string, obj: map[string]any, usage: *UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| obj | map[string]any | - | - |
| usage | *UsageObservation | - | - |

**Returns**: (none)



### anthropicStopReason(obj: map[string]any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |

**Returns**: `string`



### anthropicOutputBeforeRefusal(obj: map[string]any) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |

**Returns**: `int`



### positiveUsageCounter(obj: map[string]any, key: string, usage: *UsageObservation) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |
| key | string | - | - |
| usage | *UsageObservation | - | - |

**Returns**: `bool`


