# API Reference: transform_gemini.go

**Language**: Go

**Source**: `engine/pixel/transform_gemini.go`

---

## Classes

### geminiGenerateContent

**Inherits from**: (none)



### geminiInstruction

**Inherits from**: (none)



### geminiContent

**Inherits from**: (none)



### geminiPart

**Inherits from**: (none)



### geminiInlineData

**Inherits from**: (none)



### geminiFunctionResponse

**Inherits from**: (none)



### geminiFunctionCall

**Inherits from**: (none)



### geminiSplitText

**Inherits from**: (none)



### geminiRenderResult

**Inherits from**: (none)



### geminiGateEval

**Inherits from**: (none)



## Functions

### TransformGemini(body: []byte, opts: TransformOptions) → (out []byte, info TransformInfo, err error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| opts | TransformOptions | - | - |

**Returns**: `(out []byte, info TransformInfo, err error)`



### mergeGeminiOptions(opts: TransformOptions) → TransformOptions

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | TransformOptions | - | - |

**Returns**: `TransformOptions`



### parseGeminiGenerateContent(body: []byte) → (geminiGenerateContent, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `(geminiGenerateContent, error)`



### geminiGlobalMediaResolution(raw: map[string]json.RawMessage) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | map[string]json.RawMessage | - | - |

**Returns**: `(string, bool)`



### marshalGeminiGenerateContent(req: geminiGenerateContent) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | geminiGenerateContent | - | - |

**Returns**: `([]byte, error)`



### UnmarshalJSON(data: []byte) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |

**Returns**: `error`



### MarshalJSON() → ([]byte, error)

**Returns**: `([]byte, error)`



### UnmarshalJSON(data: []byte) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |

**Returns**: `error`



### MarshalJSON() → ([]byte, error)

**Returns**: `([]byte, error)`



### UnmarshalJSON(data: []byte) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | []byte | - | - |

**Returns**: `error`



### MarshalJSON() → ([]byte, error)

**Returns**: `([]byte, error)`



### transformGeminiSystem(req: *geminiGenerateContent, inst: *geminiInstruction, info: *TransformInfo, opts: TransformOptions) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | *geminiGenerateContent | - | - |
| inst | *geminiInstruction | - | - |
| info | *TransformInfo | - | - |
| opts | TransformOptions | - | - |

**Returns**: `(bool, error)`



### transformGeminiContents(req: *geminiGenerateContent, info: *TransformInfo, opts: TransformOptions) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | *geminiGenerateContent | - | - |
| info | *TransformInfo | - | - |
| opts | TransformOptions | - | - |

**Returns**: `(bool, error)`



### compressGeminiLargePart(unknown: raw, unknown: kind, toolName: string, info: *TransformInfo, opts: TransformOptions, numCols: int) → ([]geminiPart, bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | raw | - | - |
| unknown | kind | - | - |
| toolName | string | - | - |
| info | *TransformInfo | - | - |
| opts | TransformOptions | - | - |
| numCols | int | - | - |

**Returns**: `([]geminiPart, bool, error)`



### firstGeminiUserIndex(contents: []geminiContent) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| contents | []geminiContent | - | - |

**Returns**: `int`



### geminiFunctionResponseStub(originalChars: int, imageCount: int) → json

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| originalChars | int | - | - |
| imageCount | int | - | - |

**Returns**: `json`



### countGeminiInlineDataParts(parts: []geminiPart) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parts | []geminiPart | - | - |

**Returns**: `int`



### collapseGeminiHistory(req: *geminiGenerateContent, info: *TransformInfo, opts: TransformOptions) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | *geminiGenerateContent | - | - |
| info | *TransformInfo | - | - |
| opts | TransformOptions | - | - |

**Returns**: `(bool, error)`



### splitGeminiStaticDynamic(text: string) → geminiSplitText

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `geminiSplitText`



### extractGeminiTextParts(parts: []geminiPart) → (string, []geminiPart)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parts | []geminiPart | - | - |

**Returns**: `(string, []geminiPart)`



### geminiSystemImageHeader(opts: TransformOptions) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | TransformOptions | - | - |

**Returns**: `string`



### geminiFunctionResponseText(fr: geminiFunctionResponse) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fr | geminiFunctionResponse | - | - |

**Returns**: `string`



### geminiHistoryTranscript(contents: []geminiContent) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| contents | []geminiContent | - | - |

**Returns**: `string`



### geminiContentText(c: geminiContent) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| c | geminiContent | - | - |

**Returns**: `string`



### geminiClosedPrefixBoundary(contents: []geminiContent, cutoffExclusive: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| contents | []geminiContent | - | - |
| cutoffExclusive | int | - | - |

**Returns**: `int`



### maybeGeminiReflow(text: string, enabled: bool) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| enabled | bool | - | - |

**Returns**: `string`



### renderGeminiInlineDataParts(unknown: model, unknown: mediaResolution, text: string, unknown: cols, numCols: int, shrinkWidth: bool, maxCharsPerImage: int, style: RenderStyle) → (geminiRenderResult, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | model | - | - |
| unknown | mediaResolution | - | - |
| text | string | - | - |
| unknown | cols | - | - |
| numCols | int | - | - |
| shrinkWidth | bool | - | - |
| maxCharsPerImage | int | - | - |
| style | RenderStyle | - | - |

**Returns**: `(geminiRenderResult, error)`



### evalGeminiProfitability(unknown: model, unknown: mediaResolution, text: string, unknown: cols, unknown: imageCountCap, numCols: int, unknown: charsPerToken, unknown: priorWarmTokens, priorWarmImageTokens: float64, shrinkWidth: bool, maxCharsPerImage: int, dense: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | model | - | - |
| unknown | mediaResolution | - | - |
| text | string | - | - |
| unknown | cols | - | - |
| unknown | imageCountCap | - | - |
| numCols | int | - | - |
| unknown | charsPerToken | - | - |
| unknown | priorWarmTokens | - | - |
| priorWarmImageTokens | float64 | - | - |
| shrinkWidth | bool | - | - |
| maxCharsPerImage | int | - | - |
| dense | bool | - | - |

**Returns**: (none)



### evalGeminiProfitabilityAmortized(unknown: model, unknown: mediaResolution, text: string, unknown: cols, unknown: imageCountCap, numCols: int, charsPerToken: float64, horizon: int, unknown: priorWarmTokens, priorWarmImageTokens: float64, shrinkWidth: bool, maxCharsPerImage: int, dense: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | model | - | - |
| unknown | mediaResolution | - | - |
| text | string | - | - |
| unknown | cols | - | - |
| unknown | imageCountCap | - | - |
| numCols | int | - | - |
| charsPerToken | float64 | - | - |
| horizon | int | - | - |
| unknown | priorWarmTokens | - | - |
| priorWarmImageTokens | float64 | - | - |
| shrinkWidth | bool | - | - |
| maxCharsPerImage | int | - | - |
| dense | bool | - | - |

**Returns**: (none)



### geminiImageTokensCost(unknown: model, unknown: mediaResolution, text: string, unknown: cols, unknown: numCols, imageCountCap: int, shrinkWidth: bool, maxCharsPerImage: int, dense: bool) → (float64, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | model | - | - |
| unknown | mediaResolution | - | - |
| text | string | - | - |
| unknown | cols | - | - |
| unknown | numCols | - | - |
| imageCountCap | int | - | - |
| shrinkWidth | bool | - | - |
| maxCharsPerImage | int | - | - |
| dense | bool | - | - |

**Returns**: `(float64, bool)`



### geminiNumCols(opts: TransformOptions) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | TransformOptions | - | - |

**Returns**: `int`



### geminiTextPart(text: string) → geminiPart

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `geminiPart`



### bumpGeminiPassthrough(info: *TransformInfo, reason: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| info | *TransformInfo | - | - |
| reason | string | - | - |

**Returns**: (none)



### callerKeepsGeminiSharp(fn: func(KeepSharpBlock) → bool, block

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fn | func(KeepSharpBlock | - | - |

**Returns**: `bool, block`



### mergeGeminiDropped(info: *TransformInfo, dropped: map[rune]int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| info | *TransformInfo | - | - |
| dropped | map[rune]int | - | - |

**Returns**: (none)


