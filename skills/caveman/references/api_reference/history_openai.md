# API Reference: history_openai.go

**Language**: Go

**Source**: `engine/pixel/history_openai.go`

---

## Classes

### GptHistoryOptions

**Inherits from**: (none)



### GptHistoryTurn

**Inherits from**: (none)



### GptCollapsePlan

**Inherits from**: (none)



### renderedSection

**Inherits from**: (none)



## Functions

### DefaultGptHistoryOptions() → GptHistoryOptions

**Returns**: `GptHistoryOptions`



### PlanGptCollapse(turns: []GptHistoryTurn, protectedPrefix: int, isProfitable: GptProfitableFunc, opts: GptHistoryOptions) → (GptCollapsePlan, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| turns | []GptHistoryTurn | - | - |
| protectedPrefix | int | - | - |
| isProfitable | GptProfitableFunc | - | - |
| opts | GptHistoryOptions | - | - |

**Returns**: `(GptCollapsePlan, error)`



### normalizeGptHistoryOptions(opts: GptHistoryOptions) → GptHistoryOptions

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | GptHistoryOptions | - | - |

**Returns**: `GptHistoryOptions`



### findGptClosedBoundary(turns: []GptHistoryTurn, unknown: cutoffExclusive, from: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| turns | []GptHistoryTurn | - | - |
| unknown | cutoffExclusive | - | - |
| from | int | - | - |

**Returns**: `int`



### gptClosedPrefix(turns: []GptHistoryTurn, unknown: from, toExclusive: int) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| turns | []GptHistoryTurn | - | - |
| unknown | from | - | - |
| toExclusive | int | - | - |

**Returns**: `bool`



### joinGptTurns(turns: []GptHistoryTurn, unknown: from, unknown: toExclusive, skip: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| turns | []GptHistoryTurn | - | - |
| unknown | from | - | - |
| unknown | toExclusive | - | - |
| skip | int | - | - |

**Returns**: `string`



### gptCountTokens(text: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `int`



### safeJSONText(v: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `string`



### OpenAIResponsesItemsToTurns(items: []any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| items | []any | - | - |

**Returns**: (none)



### responsesItemToGptTurn(item: any, idx: int) → GptHistoryTurn

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| item | any | - | - |
| idx | int | - | - |

**Returns**: `GptHistoryTurn`



### OpenAIChatMessagesToTurns(messages: []any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []any | - | - |

**Returns**: (none)



### chatMessageToGptTurn(msg: any, idx: int) → GptHistoryTurn

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| msg | any | - | - |
| idx | int | - | - |

**Returns**: `GptHistoryTurn`



### firstString(values: ...any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | ...any | - | - |

**Returns**: `string`



### stringOr(v: any, fallback: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |
| fallback | string | - | - |

**Returns**: `string`



### responsesContentToHistoryText(content: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | any | - | - |

**Returns**: `string`



### chatContentToHistoryText(content: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | any | - | - |

**Returns**: `string`


