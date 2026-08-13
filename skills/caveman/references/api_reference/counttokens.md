# API Reference: counttokens.go

**Language**: Go

**Source**: `proxy/providers/internal/counttokens/counttokens.go`

---

## Classes

### anthropicRequest

**Inherits from**: (none)



## Functions

### ProjectAnthropic(original: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| original | []byte | - | - |

**Returns**: `([]byte, bool)`



### ProjectGemini(original: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| original | []byte | - | - |

**Returns**: `([]byte, bool)`



### ParseNonNegativeInt(response: []byte, field: string) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| response | []byte | - | - |
| field | string | - | - |

**Returns**: `(int, bool)`



### jsonArray(raw: json.RawMessage) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | json.RawMessage | - | - |

**Returns**: `bool`



### jsonObject(raw: json.RawMessage) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | json.RawMessage | - | - |

**Returns**: `bool`



### jsonString(raw: json.RawMessage) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | json.RawMessage | - | - |

**Returns**: `bool`



### jsonStringOrArray(raw: json.RawMessage) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | json.RawMessage | - | - |

**Returns**: `bool`



### decodeJSONObjectFields(raw: []byte) → (map[string]json.RawMessage, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |

**Returns**: `(map[string]json.RawMessage, bool)`


