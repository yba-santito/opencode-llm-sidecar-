# API Reference: frozen.go

**Language**: Go

**Source**: `proxy/providers/anthropic/frozen.go`

---

## Functions

### ComputeFrozenCount(messages: []json.RawMessage) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []json.RawMessage | - | - |

**Returns**: `int`



### messageRoleRaw(raw: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |

**Returns**: `string`



### messageHasToolResult(raw: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |

**Returns**: `bool`



### messagesHaveContentCacheControl(messages: []json.RawMessage) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []json.RawMessage | - | - |

**Returns**: `bool`



### messageHasContentCacheControl(raw: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |

**Returns**: `bool`


