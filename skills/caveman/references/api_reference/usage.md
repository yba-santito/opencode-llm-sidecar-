# API Reference: usage.go

**Language**: Go

**Source**: `proxy/providers/bedrock/usage.go`

---

## Classes

### aliasGroup

**Inherits from**: (none)



## Functions

### ParseUsage(ctx: context.Context, responseHeaders: http.Header, streamOrBody: io.Reader) → (providers.UsageObservation, io.Reader, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| responseHeaders | http.Header | - | - |
| streamOrBody | io.Reader | - | - |

**Returns**: `(providers.UsageObservation, io.Reader, error)`



### NewUsageScanner(responseHeaders: http.Header)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| responseHeaders | http.Header | - | - |

**Returns**: (none)



### bedrockRequestID(h: http.Header) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| h | http.Header | - | - |

**Returns**: `string`



### parseBedrockUsageScanner(data: []byte, usage: *providers.UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| usage | *providers.UsageObservation | - | - |

**Returns**: (none)



### newUsage(h: http.Header) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| h | http.Header | - | - |

**Returns**: `providers`



### parseBedrockUsage(data: []byte, usage: *providers.UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| usage | *providers.UsageObservation | - | - |

**Returns**: (none)



### bedrockPayloadCompletion(payload: []byte) → (streamed, terminalUsage bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| payload | []byte | - | - |

**Returns**: `(streamed, terminalUsage bool)`



### parseBedrockText(data: []byte, usage: *providers.UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| usage | *providers.UsageObservation | - | - |

**Returns**: (none)



### parseBedrockPayload(payload: []byte, usage: *providers.UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| payload | []byte | - | - |
| usage | *providers.UsageObservation | - | - |

**Returns**: (none)



### bedrockEventPayloads(data: []byte) → (payloads [][]byte, ok bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |

**Returns**: `(payloads [][]byte, ok bool)`



### mergeBedrockUsage(obj: map[string]any, usage: *providers.UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |
| usage | *providers.UsageObservation | - | - |

**Returns**: (none)



### normalizeBedrockCacheDetails(unknown: dst, src: map[string]any, usage: *providers.UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | dst | - | - |
| src | map[string]any | - | - |
| usage | *providers.UsageObservation | - | - |

**Returns**: (none)



### mergeBedrockServiceTier(obj: map[string]any, usage: *providers.UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |
| usage | *providers.UsageObservation | - | - |

**Returns**: (none)



### validateBedrockRawTotal(u: map[string]any, usage: *providers.UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| u | map[string]any | - | - |
| usage | *providers.UsageObservation | - | - |

**Returns**: (none)



### bedrockUsageKindFor(u: map[string]any) → bedrockUsageKind

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| u | map[string]any | - | - |

**Returns**: `bedrockUsageKind`



### bedrockAnyKey(m: map[string]any, keys: ...string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| m | map[string]any | - | - |
| keys | ...string | - | - |

**Returns**: `bool`



### optionalBedrockCounter(value: int, ok: bool) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | int | - | - |
| ok | bool | - | - |

**Returns**: `int`



### bedrockCheckedAdd(unknown: a, b: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | a | - | - |
| b | int | - | - |

**Returns**: `(int, bool)`



### bedrockCounter(m: map[string]any, keys: ...string) → (value int, ok, present bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| m | map[string]any | - | - |
| keys | ...string | - | - |

**Returns**: `(value int, ok, present bool)`



### bedrockNonNegativeInt(v: any) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `(int, bool)`



### copyBedrockAliases(unknown: dst, src: map[string]any, usage: *providers.UsageObservation, snake: string, camel: ...string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | dst | - | - |
| src | map[string]any | - | - |
| usage | *providers.UsageObservation | - | - |
| snake | string | - | - |
| camel | ...string | - | - |

**Returns**: (none)



### decodeBedrockObject(data: []byte, dst: *map[string]any) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |
| dst | *map[string]any | - | - |

**Returns**: `error`



### bedrockUsageObjects(obj: map[string]any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |

**Returns**: (none)



### cacheStatusFor(usage: providers.UsageObservation) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| usage | providers.UsageObservation | - | - |

**Returns**: `string`



### MapProviderError(status: int, headers: http.Header, body: []byte) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| status | int | - | - |
| headers | http.Header | - | - |
| body | []byte | - | - |

**Returns**: `providers`


