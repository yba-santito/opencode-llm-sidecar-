# API Reference: transform_gemini_test.go

**Language**: Go

**Source**: `engine/pixel/transform_gemini_test.go`

---

## Functions

### TestTransformGeminiStructural(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformGeminiPassThroughByteIdentity(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformGeminiUnknownModelFailsClosedBeforeTokenGate(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformGeminiNonHighGlobalMediaResolutionFailsClosed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformGeminiExplicitHighMediaResolutionUsesHighBudget(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformGeminiMalformedBody(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformGeminiUnknownTopLevelRawPreserved(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformGeminiUsesModelSpecificMediaResolutionGate(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformGeminiKeepsFunctionResponsePairing(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### geminiHistoryFixtureContents(n: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |

**Returns**: (none)



### mustJSONGemini(t: *testing.T, v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| v | any | - | - |

**Returns**: (none)



### mustRawMessage(t: *testing.T, v: any) → json

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| v | any | - | - |

**Returns**: `json`



### hasGeminiInlineData(parts: []geminiPart) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parts | []geminiPart | - | - |

**Returns**: `bool`



### hasGeminiText(parts: []geminiPart, want: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parts | []geminiPart | - | - |
| want | string | - | - |

**Returns**: `bool`



### hasGeminiTextContaining(parts: []geminiPart, want: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parts | []geminiPart | - | - |
| want | string | - | - |

**Returns**: `bool`



### assertGeminiFunctionResponsesFollowCalls(t: *testing.T, req: geminiGenerateContent)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| req | geminiGenerateContent | - | - |

**Returns**: (none)



### allGeminiParts(req: geminiGenerateContent)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | geminiGenerateContent | - | - |

**Returns**: (none)



### jsonDeepEqual(unknown: a, b: any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | a | - | - |
| b | any | - | - |

**Returns**: `bool`


