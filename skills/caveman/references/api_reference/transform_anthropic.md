# API Reference: transform_anthropic.go

**Language**: Go

**Source**: `engine/pixel/transform_anthropic.go`

---

## Classes

### anthropicRequestState

**Inherits from**: (none)



### staticDynamicSplit

**Inherits from**: (none)



### renderedImageBlocks

**Inherits from**: (none)



### staticTagObservation

**Inherits from**: (none)



### staticTagObservationLRU

**Inherits from**: (none)



## Functions

### twoLayerNoteBlock(rendered: renderedImageBlocks)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rendered | renderedImageBlocks | - | - |

**Returns**: (none)



### TransformAnthropic(body: []byte, opts: TransformOptions) → (out []byte, info TransformInfo, err error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| opts | TransformOptions | - | - |

**Returns**: `(out []byte, info TransformInfo, err error)`



### runHistoryCollapseAndFinalize(req: anthropicRequestState, info: TransformInfo, o: TransformOptions, rawOpts: TransformOptions, droppedCodepoints: map[rune]int, protectedPrefix: int) → ([]byte, TransformInfo, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | anthropicRequestState | - | - |
| info | TransformInfo | - | - |
| o | TransformOptions | - | - |
| rawOpts | TransformOptions | - | - |
| droppedCodepoints | map[rune]int | - | - |
| protectedPrefix | int | - | - |

**Returns**: `([]byte, TransformInfo, error)`



### normalizeTransformOptions(opts: TransformOptions) → TransformOptions

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | TransformOptions | - | - |

**Returns**: `TransformOptions`



### parseAnthropicRequest(body: []byte, fallbackModel: string) → (anthropicRequestState, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| fallbackModel | string | - | - |

**Returns**: `(anthropicRequestState, error)`



### finalizeAnthropicRequest(req: anthropicRequestState) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | anthropicRequestState | - | - |

**Returns**: `([]byte, error)`



### extractSystemText(sys: any) → (string, []any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sys | any | - | - |

**Returns**: `(string, []any)`



### lastStaticSystemCacheControl(sys: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sys | any | - | - |

**Returns**: (none)



### stripBillingLine(text: string) → (string, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `(string, string)`



### stripMarkdownEnvSection(text: string) → (string, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `(string, string)`



### headingLine(line: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | string | - | - |

**Returns**: `bool`



### splitStaticDynamic(text: string) → staticDynamicSplit

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `staticDynamicSplit`



### sniffStaticTags(text: string) → ([]string, map[string]string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `([]string, map[string]string)`



### staticTagSessionKey(staticText: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| staticText | string | - | - |

**Returns**: `string`



### sha8Text(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### newStaticTagObservationLRU()

**Returns**: (none)



### observeStaticTagChurn(sessionKey: string, tagContents: map[string]string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionKey | string | - | - |
| tagContents | map[string]string | - | - |

**Returns**: (none)



### observe(sessionKey: string, tagContents: map[string]string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionKey | string | - | - |
| tagContents | map[string]string | - | - |

**Returns**: (none)



### fnv1a32(text: string) → uint32

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `uint32`



### maybeReflowText(text: string, enabled: bool) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| enabled | bool | - | - |

**Returns**: `string`



### renderToolDocMap(tool: map[string]any, rawTool: map[string]json.RawMessage) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tool | map[string]any | - | - |
| rawTool | map[string]json.RawMessage | - | - |

**Returns**: `string`



### zebraReaderNote(zebra: bool) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| zebra | bool | - | - |

**Returns**: `string`



### twoLayerReaderNote() → string

**Returns**: `string`



### sessionConfigImageHeader(unknown: columnNote, unknown: reflowNote, inkNote: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | columnNote | - | - |
| unknown | reflowNote | - | - |
| inkNote | string | - | - |

**Returns**: `string`



### denseGateGeometry(cols: int, numCols: int, rp: renderParams) → (int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cols | int | - | - |
| numCols | int | - | - |
| rp | renderParams | - | - |

**Returns**: `(int, int)`



### textToImageBlocksAnthropic(text: string, cols: int, numCols: int, style: RenderStyle, rp: renderParams) → (renderedImageBlocks, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| cols | int | - | - |
| numCols | int | - | - |
| style | RenderStyle | - | - |
| rp | renderParams | - | - |

**Returns**: `(renderedImageBlocks, error)`



### compressToolResultBlock(block: map[string]any, o: TransformOptions, numCols: int, denseCols: int, denseMaxChars: int, info: *TransformInfo, dropped: map[rune]int, rp: renderParams, style: RenderStyle) → (map[string]any, bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| block | map[string]any | - | - |
| o | TransformOptions | - | - |
| numCols | int | - | - |
| denseCols | int | - | - |
| denseMaxChars | int | - | - |
| info | *TransformInfo | - | - |
| dropped | map[rune]int | - | - |
| rp | renderParams | - | - |
| style | RenderStyle | - | - |

**Returns**: `(map[string]any, bool, error)`



### compressToolText(rawText: string, kind: string, toolUseID: string, o: TransformOptions, numCols: int, denseCols: int, denseMaxChars: int, info: *TransformInfo, dropped: map[rune]int, srcCC: *CacheControl, rp: renderParams, style: RenderStyle) → ([]any, bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rawText | string | - | - |
| kind | string | - | - |
| toolUseID | string | - | - |
| o | TransformOptions | - | - |
| numCols | int | - | - |
| denseCols | int | - | - |
| denseMaxChars | int | - | - |
| info | *TransformInfo | - | - |
| dropped | map[rune]int | - | - |
| srcCC | *CacheControl | - | - |
| rp | renderParams | - | - |
| style | RenderStyle | - | - |

**Returns**: `([]any, bool, error)`



### relocateAnchorToHistoryImage(messages: []Message, anchorOrdinal: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []Message | - | - |
| anchorOrdinal | int | - | - |

**Returns**: (none)



### countOutgoingTextChars(req: anthropicRequestState) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | anthropicRequestState | - | - |

**Returns**: `int`



### bumpPassthrough(info: *TransformInfo, reason: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| info | *TransformInfo | - | - |
| reason | string | - | - |

**Returns**: (none)



### callerKeepsSharp(fn: func(KeepSharpBlock) → bool, block

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fn | func(KeepSharpBlock | - | - |

**Returns**: `bool, block`



### recordRecoverable(info: *TransformInfo, emit: bool, kind: string, toolUseID: string, text: string, imageCount: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| info | *TransformInfo | - | - |
| emit | bool | - | - |
| kind | string | - | - |
| toolUseID | string | - | - |
| text | string | - | - |
| imageCount | int | - | - |

**Returns**: (none)



### addGateEstimates(info: *TransformInfo, gate: *GateEval)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| info | *TransformInfo | - | - |
| gate | *GateEval | - | - |

**Returns**: (none)



### canAddImages(info: *TransformInfo, n: int) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| info | *TransformInfo | - | - |
| n | int | - | - |

**Returns**: `bool`



### approxBlockBytes(block: map[string]any) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| block | map[string]any | - | - |

**Returns**: `int`



### imageBlockMap(b64: string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b64 | string | - | - |

**Returns**: `map[string]`



### normalizeContentToBlocks(content: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | any | - | - |

**Returns**: (none)



### messageContentBlocks(content: any) → ([]map[string]any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | any | - | - |

**Returns**: `([]map[string]any, bool)`



### contentBlocks(content: any) → ([]map[string]any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | any | - | - |

**Returns**: `([]map[string]any, bool)`



### blockString(block: map[string]any, key: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| block | map[string]any | - | - |
| key | string | - | - |

**Returns**: `string`



### blockAny(block: map[string]any, key: string) → any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| block | map[string]any | - | - |
| key | string | - | - |

**Returns**: `any`



### blockBool(block: map[string]any, key: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| block | map[string]any | - | - |
| key | string | - | - |

**Returns**: `bool`



### blockCacheControl(block: map[string]any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| block | map[string]any | - | - |

**Returns**: (none)



### cloneMessages(messages: []Message)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []Message | - | - |

**Returns**: (none)



### cloneMap(in: map[string]any) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| in | map[string]any | - | - |

**Returns**: `map[string]`



### cloneRawMap(in: map[string]json.RawMessage) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| in | map[string]json.RawMessage | - | - |

**Returns**: `map[string]`



### structToMap(v: any) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `map[string]`



### mergeDropped(dst: map[rune]int, src: map[rune]int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| dst | map[rune]int | - | - |
| src | map[rune]int | - | - |

**Returns**: (none)



### hasUserMessage(messages: []Message) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []Message | - | - |

**Returns**: `bool`



### firstUserIndex(messages: []Message) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []Message | - | - |

**Returns**: `int`



### valueOrQuestion(s: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `string`



### joinNonEmpty(parts: []string, sep: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parts | []string | - | - |
| sep | string | - | - |

**Returns**: `string`



### jsonCompact(v: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `string`



### safeStringifyLen(v: any) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `int`



### toString(v: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `string`



### intPtr(v: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | int | - | - |

**Returns**: (none)



### boolPtr(v: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | bool | - | - |

**Returns**: (none)



### sortedCacheControlPositions(req: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | any | - | - |

**Returns**: (none)


