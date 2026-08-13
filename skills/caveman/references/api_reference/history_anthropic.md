# API Reference: history_anthropic.go

**Language**: Go

**Source**: `engine/pixel/history_anthropic.go`

---

## Classes

### historyOptions

**Inherits from**: (none)



### historyInfo

**Inherits from**: (none)



## Functions

### defaultHistoryOptions(opts: historyOptions) → historyOptions

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | historyOptions | - | - |

**Returns**: `historyOptions`



### newHistoryInfo() → historyInfo

**Returns**: `historyInfo`



### findClosedPrefixBoundary(messages: []Message, cutoffExclusive: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []Message | - | - |
| cutoffExclusive | int | - | - |

**Returns**: `int`



### staleFreshnessHints(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### blocksToText(content: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | any | - | - |

**Returns**: `string`



### messageCacheControl(m: Message)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| m | Message | - | - |

**Returns**: (none)



### messagesToHistoryText(messages: []Message, upToExclusive: int, fromInclusive: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []Message | - | - |
| upToExclusive | int | - | - |
| fromInclusive | int | - | - |

**Returns**: `string`



### messagesToHistorySegments(messages: []Message, upToExclusive: int, fromInclusive: int) → (string, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []Message | - | - |
| upToExclusive | int | - | - |
| fromInclusive | int | - | - |

**Returns**: `(string, string)`



### compactHistoryPreview(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### verbatimTaskText(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### typedUserText(content: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | any | - | - |

**Returns**: `string`



### demoteProtectedHeadText(head: []Message)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| head | []Message | - | - |

**Returns**: (none)



### latestCollapsedUserPointer(messages: []Message, upToExclusive: int, protectedPrefix: int) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []Message | - | - |
| upToExclusive | int | - | - |
| protectedPrefix | int | - | - |

**Returns**: `map[string]`



### collapseAnthropicHistory(messages: []Message, profitable func(text: string, cols: int) → bool, opts

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []Message | - | - |
| profitable func(text | string | - | - |
| cols | int | - | - |

**Returns**: `bool, opts`


