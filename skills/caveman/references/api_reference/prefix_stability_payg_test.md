# API Reference: prefix_stability_payg_test.go

**Language**: Go

**Source**: `proxy/internal/gateway/prefix_stability_payg_test.go`

---

## Functions

### newPAYGPrefixServer(adapter: providers.Adapter, key: string, comp: Compressor, cache: PrefixCache, rt: *captureTransport) → (*Server, *captureSink)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |
| key | string | - | - |
| comp | Compressor | - | - |
| cache | PrefixCache | - | - |
| rt | *captureTransport | - | - |

**Returns**: `(*Server, *captureSink)`



### payghTransport(turns: int, resp: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| turns | int | - | - |
| resp | string | - | - |

**Returns**: (none)



### openaiTurnConversation(userTexts: ...string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| userTexts | ...string | - | - |

**Returns**: `string`



### openaiToolConversation(payloads: ...string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| payloads | ...string | - | - |

**Returns**: `string`



### geminiTurnConversation(userTexts: ...string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| userTexts | ...string | - | - |

**Returns**: `string`



### TestOpenAIPAYGPrefixStableAcrossTurns(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOpenAIPAYGPrefixStableThreeTurns(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOpenAIPAYGPrefixStableToolMessages(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOpenAIPAYGPrefixStableSurvivesRestart(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOpenAIPAYGPrefixCacheBeatsNonDeterministicCompressor(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOpenAIPAYGPrefixCacheUnavailablePassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOpenAIPAYGPrefixSubstitutionBooksSavingsOnce(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestGeminiPAYGPrefixStableAcrossTurns(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestGeminiPAYGPrefixStableSurvivesRestart(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestGeminiPAYGPrefixCacheBeatsNonDeterministicCompressor(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestGeminiPAYGPrefixCacheUnavailablePassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestGeminiPAYGPrefixSubstitutionBooksSavingsOnce(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


