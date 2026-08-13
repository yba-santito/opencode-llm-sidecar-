# API Reference: transform_openai_test.go

**Language**: Go

**Source**: `engine/pixel/transform_openai_test.go`

---

## Classes

### manifest

**Inherits from**: (none)



## Functions

### TestGptProfilesAndVisionCosts(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestGptProfileEnvRejectsInvalidCostsAndSubPixelGeometry(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformOpenAIChatCompressesSystemAndToolDocs(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformOpenAIResponsesCompressesInstructionsAndTools(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformOpenAIResponsesBareStringInput(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformOpenAIPassThroughAndErrors(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformOpenAIGoldenFixtures(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### openAITestOptions(model: string) → TransformOptions

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `TransformOptions`



### taskLikeParams() → map[string]

**Returns**: `map[string]`



### taskLikeChatTool(desc: string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| desc | string | - | - |

**Returns**: `map[string]`



### taskLikeResponsesTool(desc: string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| desc | string | - | - |

**Returns**: `map[string]`



### mustMarshalTest(t: *testing.T, v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| v | any | - | - |

**Returns**: (none)



### unmarshalTest(t: *testing.T, b: []byte, v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| b | []byte | - | - |
| v | any | - | - |

**Returns**: (none)



### unmarshalFileTest(t: *testing.T, path: string, v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| path | string | - | - |
| v | any | - | - |

**Returns**: (none)



### readFileTest(t: *testing.T, path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| path | string | - | - |

**Returns**: (none)



### countDataImages(v: any) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `int`



### collectDataImageStrings(v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: (none)



### normalizeDataImages(v: any) → any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `any`



### decodeDataImageTest(t: *testing.T, uri: string) → image

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| uri | string | - | - |

**Returns**: `image`



### decodePNGTest(t: *testing.T, pngBytes: []byte) → image

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| pngBytes | []byte | - | - |

**Returns**: `image`



### assertImagePixelsEqual(t: *testing.T, unknown: got, want: image.Image)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | got | - | - |
| want | image.Image | - | - |

**Returns**: (none)



### containsTextPart(parts: []any, text: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parts | []any | - | - |
| text | string | - | - |

**Returns**: `bool`


