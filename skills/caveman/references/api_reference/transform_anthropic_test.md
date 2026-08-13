# API Reference: transform_anthropic_test.go

**Language**: Go

**Source**: `engine/pixel/transform_anthropic_test.go`

---

## Functions

### TestTransformAnthropicCacheControlNeverAdds(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformAnthropicRelocatesExistingCacheControlToHistory(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformAnthropicKeepSharpAndRecoverable(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformAnthropicStaticTagCanary(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestObserveStaticTagChurnConcurrent(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformAnthropicMalformedAndPassThroughShapes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformAnthropicHistoryRunsOnEarlyExit(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformAnthropicGoldenFixtures(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### assertMessagesStructureEqual(t: *testing.T, expected: any, got: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| expected | any | - | - |
| got | any | - | - |

**Returns**: (none)



### assertContentStructureEqual(t: *testing.T, path: string, expected: any, got: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| path | string | - | - |
| expected | any | - | - |
| got | any | - | - |

**Returns**: (none)



### assertCachePositionsEqual(t: *testing.T, expected: any, got: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| expected | any | - | - |
| got | any | - | - |

**Returns**: (none)



### assertDecodedImagesEqual(t: *testing.T, expected: any, got: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| expected | any | - | - |
| got | any | - | - |

**Returns**: (none)



### assertOneImagePixelsEqual(t: *testing.T, idx: int, gotB64: string, wantB64: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| idx | int | - | - |
| gotB64 | string | - | - |
| wantB64 | string | - | - |

**Returns**: (none)



### decodePNGFromB64(t: *testing.T, s: string) → image

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| s | string | - | - |

**Returns**: `image`



### userBlocksFromBody(t: *testing.T, body: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | []byte | - | - |

**Returns**: (none)



### findToolResult(t: *testing.T, blocks: []any, id: string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| blocks | []any | - | - |
| id | string | - | - |

**Returns**: `map[string]`



### collectImageDataFromMessages(messages: []Message)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []Message | - | - |

**Returns**: (none)



### collectImageDataFromAny(v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: (none)



### collectImageData(blocks: []any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| blocks | []any | - | - |

**Returns**: (none)



### messagesToAny(messages: []Message)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []Message | - | - |

**Returns**: (none)



### countCacheMarkersJSON(t: *testing.T, body: []byte) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | []byte | - | - |

**Returns**: `int`



### mustJSONBytes(t: *testing.T, v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| v | any | - | - |

**Returns**: (none)



### readJSONFile(t: *testing.T, path: string, out: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| path | string | - | - |
| out | any | - | - |

**Returns**: (none)



### sha8ForTest(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### sha256SumForTest(b: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |

**Returns**: (none)



### base64HexForTest(b: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |

**Returns**: `string`



### resetStaticTagObservationsForTest()

**Returns**: (none)



### itoa(n: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |

**Returns**: `string`


