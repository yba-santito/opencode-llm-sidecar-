# API Reference: pixel_test.go

**Language**: Go

**Source**: `proxy/internal/gateway/pixel_test.go`

---

## Classes

### pixelStoreCompressor

**Inherits from**: (none)



## Functions

### CompressSegment(seg: []byte) → ([]byte, int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| seg | []byte | - | - |

**Returns**: `([]byte, int, int)`



### StoreOriginal(body: []byte) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `(string, error)`



### newPixelTestServer(t: *testing.T, upstream: string, mode: string, adapter: providers.Adapter, sink: TelemetrySink, comp: Compressor, recoveryViaMCP: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| upstream | string | - | - |
| mode | string | - | - |
| adapter | providers.Adapter | - | - |
| sink | TelemetrySink | - | - |
| comp | Compressor | - | - |
| recoveryViaMCP | bool | - | - |

**Returns**: (none)



### capturePixelUpstream(t: *testing.T, response: string) → (*httptest.Server, *[]byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| response | string | - | - |

**Returns**: `(*httptest.Server, *[]byte)`



### TestPixelModeAnthropicImagesAndStoresOriginal(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPixelModeDisallowedModelPassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPixelModeRecordPassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestExplicitPassThroughSuppressesPixelMode(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPixelModeSubscriptionDefaultPassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPixelModeStoreFailurePassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPixelModeMalformedJSONPassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPixelModeGeminiImagesAllowedModel(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPixelModeOpenAIImagesGPT56(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPixelModeOpenAIResponsesStringInput(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPixelModeOpenAIResponsesUserAndToolOutput(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPixelModeStreamingAnthropicMCPAndPlain(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### anthropicPixelBody(model: string, stream: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |
| stream | bool | - | - |

**Returns**: (none)



### assertPixelStaticSlabIntact(t: *testing.T, upstreamBody: string, token: string, originalRepeats: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| upstreamBody | string | - | - |
| token | string | - | - |
| originalRepeats | int | - | - |

**Returns**: (none)



### openAIPixelBody()

**Returns**: (none)



### geminiPixelBody()

**Returns**: (none)



### anthropicPixelResponse(model: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `string`



### openAIPixelResponse() → string

**Returns**: `string`



### geminiPixelResponse() → string

**Returns**: `string`


