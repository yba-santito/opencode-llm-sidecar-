# API Reference: compaction.ts

**Language**: TypeScript

**Source**: `packages/agent/src/compaction.ts`

---

## Functions

### normalizeCompaction(options: CompactionOptions = {})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| options | CompactionOptions | {} | - |

**Returns**: (none)



### parseContextSummary(text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: (none)



### summarizationInstruction(previous: ContextSummary | undefined)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| previous | ContextSummary | undefined | - | - |

**Returns**: (none)



### renderSummary(summary: ContextSummary)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| summary | ContextSummary | - | - |

**Returns**: (none)



### planCompaction(messages: readonly AgentMessage[], config: NormalizedCompaction)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | readonly AgentMessage[] | - | - |
| config | NormalizedCompaction | - | - |

**Returns**: (none)



### pinnedContentSurvives(original: readonly AgentMessage[], pinned: readonly number[], rewritten: readonly AgentMessage[])

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| original | readonly AgentMessage[] | - | - |
| pinned | readonly number[] | - | - |
| rewritten | readonly AgentMessage[] | - | - |

**Returns**: (none)



### evictionCitation(message: AgentMessage, index: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| message | AgentMessage | - | - |
| index | number | - | - |

**Returns**: (none)



### elidedDigest(message: AgentMessage)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| message | AgentMessage | - | - |

**Returns**: (none)



### evictMessage(message: AgentMessage, index: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| message | AgentMessage | - | - |
| index | number | - | - |

**Returns**: (none)



### messageTokens(message: AgentMessage)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| message | AgentMessage | - | - |

**Returns**: (none)



### messagesTokens(messages: readonly AgentMessage[])

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | readonly AgentMessage[] | - | - |

**Returns**: (none)



### messageText(message: AgentMessage)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| message | AgentMessage | - | - |

**Returns**: (none)



### role(message: AgentMessage)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| message | AgentMessage | - | - |

**Returns**: (none)



### toolResultName(message: AgentMessage)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| message | AgentMessage | - | - |

**Returns**: (none)



### openToolCallOwners(messages: readonly AgentMessage[], cut: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | readonly AgentMessage[] | - | - |
| cut | number | - | - |

**Returns**: (none)



### extractJSONObject(text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: (none)



### stringArray(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### objectArray(value: unknown, required: readonly string[])

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |
| required | readonly string[] | - | - |

**Returns**: (none)



### isRecord(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)


