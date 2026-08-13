# API Reference: pixel.go

**Language**: Go

**Source**: `proxy/internal/gateway/pixel.go`

---

## Classes

### pixelReplacement

**Inherits from**: (none)



## Functions

### pixelRequest(adapter: providers.Adapter, body: []byte, meta: providers.RequestMetadata, transform: *providers.TransformResult, requestID: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |
| transform | *providers.TransformResult | - | - |
| requestID | string | - | - |

**Returns**: (none)



### transformPixelLiveZone(adapter: providers.Adapter, meta: providers.RequestMetadata, body: []byte, opts: pixel.TransformOptions) → ([]byte, pixel.TransformInfo, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |
| meta | providers.RequestMetadata | - | - |
| body | []byte | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `([]byte, pixel.TransformInfo, error)`



### transformAnthropicPixelLiveZone(body: []byte, opts: pixel.TransformOptions) → ([]byte, pixel.TransformInfo, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `([]byte, pixel.TransformInfo, error)`



### collectAnthropicPixelCandidates(body: []byte, msg: gatewayJSONSpan, opts: pixel.TransformOptions, reps: *[]pixelReplacement)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| msg | gatewayJSONSpan | - | - |
| opts | pixel.TransformOptions | - | - |
| reps | *[]pixelReplacement | - | - |

**Returns**: (none)



### collectAnthropicPixelBlocks(body: []byte, blocksSpan: gatewayJSONSpan, opts: pixel.TransformOptions, reps: *[]pixelReplacement)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| blocksSpan | gatewayJSONSpan | - | - |
| opts | pixel.TransformOptions | - | - |
| reps | *[]pixelReplacement | - | - |

**Returns**: (none)



### transformOpenAIPixelLiveZone(body: []byte, opts: pixel.TransformOptions) → ([]byte, pixel.TransformInfo, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `([]byte, pixel.TransformInfo, error)`



### transformOpenAIChatPixelLiveZone(body: []byte, messagesSpan: gatewayJSONSpan, opts: pixel.TransformOptions) → ([]byte, pixel.TransformInfo, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| messagesSpan | gatewayJSONSpan | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `([]byte, pixel.TransformInfo, error)`



### transformOpenAIResponsesPixelLiveZone(body: []byte, inputSpan: gatewayJSONSpan, opts: pixel.TransformOptions) → ([]byte, pixel.TransformInfo, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| inputSpan | gatewayJSONSpan | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `([]byte, pixel.TransformInfo, error)`



### collectOpenAIResponsesUserPixelCandidates(body: []byte, item: gatewayJSONSpan, opts: pixel.TransformOptions, reps: *[]pixelReplacement)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| item | gatewayJSONSpan | - | - |
| opts | pixel.TransformOptions | - | - |
| reps | *[]pixelReplacement | - | - |

**Returns**: (none)



### renderOpenAIResponsesPixelValue(body: []byte, valueSpan: gatewayJSONSpan, opts: pixel.TransformOptions, minChars: int) → (pixelReplacement, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| valueSpan | gatewayJSONSpan | - | - |
| opts | pixel.TransformOptions | - | - |
| minChars | int | - | - |

**Returns**: `(pixelReplacement, bool)`



### renderOpenAIResponsesPixelPart(body: []byte, unknown: partSpan, textSpan: gatewayJSONSpan, opts: pixel.TransformOptions) → (pixelReplacement, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| unknown | partSpan | - | - |
| textSpan | gatewayJSONSpan | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `(pixelReplacement, bool)`



### renderAnthropicPixelValue(body: []byte, valueSpan: gatewayJSONSpan, opts: pixel.TransformOptions, minChars: int) → (pixelReplacement, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| valueSpan | gatewayJSONSpan | - | - |
| opts | pixel.TransformOptions | - | - |
| minChars | int | - | - |

**Returns**: `(pixelReplacement, bool)`



### renderAnthropicPixelBlock(body: []byte, unknown: blockSpan, textSpan: gatewayJSONSpan, opts: pixel.TransformOptions, minChars: int) → (pixelReplacement, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| unknown | blockSpan | - | - |
| textSpan | gatewayJSONSpan | - | - |
| opts | pixel.TransformOptions | - | - |
| minChars | int | - | - |

**Returns**: `(pixelReplacement, bool)`



### renderOpenAIPixelValue(body: []byte, valueSpan: gatewayJSONSpan, opts: pixel.TransformOptions) → (pixelReplacement, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| valueSpan | gatewayJSONSpan | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `(pixelReplacement, bool)`



### renderOpenAIPixelPart(body: []byte, unknown: partSpan, textSpan: gatewayJSONSpan, opts: pixel.TransformOptions) → (pixelReplacement, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| unknown | partSpan | - | - |
| textSpan | gatewayJSONSpan | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `(pixelReplacement, bool)`



### anthropicImageBlocks(text: string, opts: pixel.TransformOptions) → ([]byte, int, int, int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `([]byte, int, int, int, bool)`



### openAIImageParts(text: string, opts: pixel.TransformOptions) → ([]byte, int, int, int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `([]byte, int, int, int, bool)`



### openAIResponsesImageParts(text: string, opts: pixel.TransformOptions) → ([]byte, int, int, int, int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `([]byte, int, int, int, int, bool)`



### renderLiveZonePNGs(text: string, opts: pixel.TransformOptions) → ([]pixel.RenderedImage, int, int, int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `([]pixel.RenderedImage, int, int, int, bool)`



### rawMessagesToBytes(raw: []json.RawMessage)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []json.RawMessage | - | - |

**Returns**: (none)



### applyPixelReplacements(body: []byte, reps: []pixelReplacement) → ([]byte, pixel.TransformInfo, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| reps | []pixelReplacement | - | - |

**Returns**: `([]byte, pixel.TransformInfo, error)`



### gatewayObjectStringField(body: []byte, obj: gatewayJSONSpan, field: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| obj | gatewayJSONSpan | - | - |
| field | string | - | - |

**Returns**: `string`



### gatewayIsJSONString(body: []byte, span: gatewayJSONSpan) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| span | gatewayJSONSpan | - | - |

**Returns**: `bool`



### gatewayDecodeJSONString(raw: []byte) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |

**Returns**: `(string, bool)`



### transformPixelBody(provider: string, body: []byte, opts: pixel.TransformOptions) → ([]byte, pixel.TransformInfo, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| body | []byte | - | - |
| opts | pixel.TransformOptions | - | - |

**Returns**: `([]byte, pixel.TransformInfo, error)`



### sniffVertexPixelShape(body: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `string`


