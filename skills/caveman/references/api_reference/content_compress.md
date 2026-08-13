# API Reference: content_compress.go

**Language**: Go

**Source**: `proxy/providers/openai/content_compress.go`

---

## Classes

### jsonSpan

**Inherits from**: (none)



### spliceCandidate

**Inherits from**: (none)



### zoneCandidate

**Inherits from**: (none)



## Functions

### ExtractCompressible(body: []byte, meta: providers.RequestMetadata) → ([][]byte, func([][]byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |

**Returns**: `([][]byte, func([][]byte)`



### ExtractCompressible(body: []byte, meta: providers.RequestMetadata) → ([][]byte, func([][]byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |

**Returns**: `([][]byte, func([][]byte)`



### ExtractStabilizable(body: []byte, meta: providers.RequestMetadata) → ([]providers.RewritableBlock, func([][]byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |

**Returns**: `([]providers.RewritableBlock, func([][]byte)`



### ExtractStabilizable(body: []byte, meta: providers.RequestMetadata) → ([]providers.RewritableBlock, func([][]byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |

**Returns**: `([]providers.RewritableBlock, func([][]byte)`



### rewritableZones(body: []byte, meta: providers.RequestMetadata, liveOnly: bool) → ([]zoneCandidate, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |
| liveOnly | bool | - | - |

**Returns**: `([]zoneCandidate, bool)`



### chatZones(body: []byte, root: jsonSpan, liveOnly: bool) → ([]zoneCandidate, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| root | jsonSpan | - | - |
| liveOnly | bool | - | - |

**Returns**: `([]zoneCandidate, bool)`



### responsesZones(body: []byte, root: jsonSpan, liveOnly: bool) → ([]zoneCandidate, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| root | jsonSpan | - | - |
| liveOnly | bool | - | - |

**Returns**: `([]zoneCandidate, bool)`



### chatRecoveryCallIDs(body: []byte, messages: []jsonSpan) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| messages | []jsonSpan | - | - |

**Returns**: `map[string]`



### liveZones(candidates: []spliceCandidate, kind: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| candidates | []spliceCandidate | - | - |
| kind | string | - | - |

**Returns**: (none)



### collectResponsesContent(body: []byte, item: jsonSpan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| item | jsonSpan | - | - |

**Returns**: (none)



### latestOpenAITargets(body: []byte, messages: []jsonSpan) → map[int]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| messages | []jsonSpan | - | - |

**Returns**: `map[int]`



### collectOpenAICandidates(body: []byte, msg: jsonSpan, allowForcedTOON: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| msg | jsonSpan | - | - |
| allowForcedTOON | bool | - | - |

**Returns**: (none)



### collectStringCandidate(body: []byte, span: jsonSpan, out: *[]spliceCandidate, allowForcedTOON: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| span | jsonSpan | - | - |
| out | *[]spliceCandidate | - | - |
| allowForcedTOON | bool | - | - |

**Returns**: (none)



### forcedTOONCandidate(original: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| original | []byte | - | - |

**Returns**: `bool`



### messageRole(body: []byte, msg: jsonSpan) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| msg | jsonSpan | - | - |

**Returns**: `string`



### objectStringField(body: []byte, obj: jsonSpan, field: string) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| obj | jsonSpan | - | - |
| field | string | - | - |

**Returns**: `(string, bool)`



### rootObjectSpan(body: []byte) → (jsonSpan, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `(jsonSpan, bool)`



### findObjectField(body: []byte, obj: jsonSpan, field: string) → (jsonSpan, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| obj | jsonSpan | - | - |
| field | string | - | - |

**Returns**: `(jsonSpan, bool)`



### arrayElements(body: []byte, arr: jsonSpan) → ([]jsonSpan, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| arr | jsonSpan | - | - |

**Returns**: `([]jsonSpan, bool)`



### scanJSONValue(body: []byte, start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| start | int | - | - |

**Returns**: `(int, bool)`



### scanJSONString(body: []byte, start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| start | int | - | - |

**Returns**: `(int, bool)`



### skipJSONSpace(body: []byte, i: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| i | int | - | - |

**Returns**: `int`



### decodeJSONString(raw: []byte) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |

**Returns**: `(string, bool)`



### isJSONString(body: []byte, span: jsonSpan) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| span | jsonSpan | - | - |

**Returns**: `bool`



### quoteJSONStringNoHTML(s: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `([]byte, error)`



### spliceStringReplacements(body: []byte, candidates: []spliceCandidate, reps: [][]byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| candidates | []spliceCandidate | - | - |
| reps | [][]byte | - | - |

**Returns**: `([]byte, error)`


