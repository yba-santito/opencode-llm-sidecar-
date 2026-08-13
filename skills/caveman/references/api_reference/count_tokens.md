# API Reference: count_tokens.go

**Language**: Go

**Source**: `proxy/providers/openai/count_tokens.go`

---

## Classes

### responsesCountRequest

**Inherits from**: (none)



## Functions

### CountTokensRequest(original: []byte, meta: providers.RequestMetadata) → (string, []byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| original | []byte | - | - |
| meta | providers.RequestMetadata | - | - |

**Returns**: `(string, []byte, bool)`



### ParseCountTokens(response: []byte) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| response | []byte | - | - |

**Returns**: `(int, bool)`



### projectResponses(original: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| original | []byte | - | - |

**Returns**: `([]byte, bool)`



### isJSONNull(raw: json.RawMessage) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | json.RawMessage | - | - |

**Returns**: `bool`



### structuredOutputRequested(raw: json.RawMessage) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | json.RawMessage | - | - |

**Returns**: `bool`


