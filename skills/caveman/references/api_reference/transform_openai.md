# API Reference: transform_openai.go

**Language**: Go

**Source**: `engine/pixel/transform_openai.go`

---

## Classes

### openAIOptions

**Inherits from**: (none)



### openAIGateResult

**Inherits from**: (none)



## Functions

### TransformOpenAI(body: []byte, opts: TransformOptions) → (out []byte, info TransformInfo, err error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| opts | TransformOptions | - | - |

**Returns**: `(out []byte, info TransformInfo, err error)`



### transformOpenAIChat(body: []byte, root: map[string]json.RawMessage, opts: TransformOptions) → ([]byte, TransformInfo, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| root | map[string]json.RawMessage | - | - |
| opts | TransformOptions | - | - |

**Returns**: `([]byte, TransformInfo, error)`



### transformOpenAIResponses(body: []byte, root: map[string]json.RawMessage, opts: TransformOptions) → ([]byte, TransformInfo, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| root | map[string]json.RawMessage | - | - |
| opts | TransformOptions | - | - |

**Returns**: `([]byte, TransformInfo, error)`



### evalOpenAIGate(unknown: model, renderedText: string, cols: int, charsPerToken: float64, rp: renderParams) → openAIGateResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | model | - | - |
| renderedText | string | - | - |
| cols | int | - | - |
| charsPerToken | float64 | - | - |
| rp | renderParams | - | - |

**Returns**: `openAIGateResult`



### estimateOpenAIImageTokens(unknown: model, text: string, unknown: cols, maxHeightPx: int, rp: renderParams) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | model | - | - |
| text | string | - | - |
| unknown | cols | - | - |
| maxHeightPx | int | - | - |
| rp | renderParams | - | - |

**Returns**: `int`



### renderOpenAIText(text: string, unknown: cols, maxHeightPx: int, style: RenderStyle) → ([]RenderedImage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| unknown | cols | - | - |
| maxHeightPx | int | - | - |
| style | RenderStyle | - | - |

**Returns**: `([]RenderedImage, error)`



### foldOpenAIImages(info: *TransformInfo, model: string, images: []RenderedImage)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| info | *TransformInfo | - | - |
| model | string | - | - |
| images | []RenderedImage | - | - |

**Returns**: (none)



### foldOpenAIHistory(info: *TransformInfo, model: string, plan: GptCollapsePlan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| info | *TransformInfo | - | - |
| model | string | - | - |
| plan | GptCollapsePlan | - | - |

**Returns**: (none)



### gptTextTokens(text: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `int`



### gptImageTokens(model: string, images: []RenderedImage) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |
| images | []RenderedImage | - | - |

**Returns**: `int`



### gptBaselineImagedTokens(systemTexts: []string, unknown: originalTools, strippedTools: []any, haveTools: bool) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| systemTexts | []string | - | - |
| unknown | originalTools | - | - |
| strippedTools | []any | - | - |
| haveTools | bool | - | - |

**Returns**: `int`



### openAIChatImagePart(img: RenderedImage) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| img | RenderedImage | - | - |

**Returns**: `map[string]`



### openAIResponsesImagePart(img: RenderedImage) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| img | RenderedImage | - | - |

**Returns**: `map[string]`



### chatHistorySynthetic(plan: GptCollapsePlan) → (map[string]any, map[string]any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plan | GptCollapsePlan | - | - |

**Returns**: `(map[string]any, map[string]any)`



### responsesHistorySynthetic(plan: GptCollapsePlan) → (map[string]any, map[string]any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plan | GptCollapsePlan | - | - |

**Returns**: `(map[string]any, map[string]any)`



### pinnedRequestBlock(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### buildLiveRequestGuard(pinText: *string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pinText | *string | - | - |

**Returns**: `string`



### rewriteChatToolsForGpt(tools: []any) → ([]any, string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tools | []any | - | - |

**Returns**: `([]any, string, bool)`



### rewriteFlatToolsForGpt(tools: []any) → ([]any, string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tools | []any | - | - |

**Returns**: `([]any, string, bool)`



### renderChatToolDoc(fn: map[string]any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fn | map[string]any | - | - |

**Returns**: `string`



### renderFlatToolDoc(tool: map[string]any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tool | map[string]any | - | - |

**Returns**: `string`



### openAIEmptyInfo() → TransformInfo

**Returns**: `TransformInfo`



### resolveOpenAIOptions(opts: TransformOptions, model: string) → openAIOptions

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | TransformOptions | - | - |
| model | string | - | - |

**Returns**: `openAIOptions`



### parseOpenAIRoot(body: []byte) → (map[string]json.RawMessage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `(map[string]json.RawMessage, error)`



### openAIModel(root: map[string]json.RawMessage, opts: TransformOptions) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]json.RawMessage | - | - |
| opts | TransformOptions | - | - |

**Returns**: `string`



### openAIChatContentText(content: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | any | - | - |

**Returns**: `string`



### responsesStaticContentText(content: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | any | - | - |

**Returns**: `string`



### setOpenAIChatTextContent(msg: map[string]any, text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| msg | map[string]any | - | - |
| text | string | - | - |

**Returns**: (none)



### setResponsesTextContent(msg: map[string]any, text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| msg | map[string]any | - | - |
| text | string | - | - |

**Returns**: (none)



### firstRoleIndex(items: []any, role: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| items | []any | - | - |
| role | string | - | - |

**Returns**: `int`



### maybeReflowOpenAI(text: string, enabled: bool) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| enabled | bool | - | - |

**Returns**: `string`



### withOpenAIReflowNote(header: string, enabled: bool) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| header | string | - | - |
| enabled | bool | - | - |

**Returns**: `string`



### withOpenAIZebraNote(header: string, zebra: bool) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| header | string | - | - |
| zebra | bool | - | - |

**Returns**: `string`



### nonEmptyStrings(values: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | []string | - | - |

**Returns**: (none)



### insertAny(items: []any, idx: int, value: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| items | []any | - | - |
| idx | int | - | - |
| value | any | - | - |

**Returns**: (none)



### replaceRangeWith(items: []any, unknown: start, end: int, values: ...any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| items | []any | - | - |
| unknown | start | - | - |
| end | int | - | - |
| values | ...any | - | - |

**Returns**: (none)



### setRawJSON(root: map[string]json.RawMessage, key: string, value: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]json.RawMessage | - | - |
| key | string | - | - |
| value | any | - | - |

**Returns**: (none)



### mustRawJSON(value: any) → json

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |

**Returns**: `json`



### openAIMustJSON(value: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |

**Returns**: (none)



### sha8Bytes(data: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |

**Returns**: `string`



### openAIOptionsZero(opts: TransformOptions) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | TransformOptions | - | - |

**Returns**: `bool`


