# API Reference: history_anthropic_test.go

**Language**: Go

**Source**: `engine/pixel/history_anthropic_test.go`

---

## Functions

### TestHistorySyntheticIntroVerbatim(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCollapseAnthropicHistoryNoHistory(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCollapseAnthropicHistoryKeepsTail(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCollapseAnthropicHistoryOpenToolSequenceStaysLive(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCollapseAnthropicHistoryQuantizedBytesStable(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### anthropicConvo(n: int, chars: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |
| chars | int | - | - |

**Returns**: (none)



### anthropicMsg(i: int, body: string) → Message

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| i | int | - | - |
| body | string | - | - |

**Returns**: `Message`


