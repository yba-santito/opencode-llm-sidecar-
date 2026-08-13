# API Reference: claude-runtime.ts

**Language**: TypeScript

**Source**: `packages/agent/src/claude-runtime.ts`

---

## Functions

### runClaudeAgent(definition: AgentDefinition, input: string, options: ClaudeRunOptions = {})

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| definition | AgentDefinition | - | - |
| input | string | - | - |
| options | ClaudeRunOptions | {} | - |

**Returns**: (none)



### runClaudeAgentInternal(definition: AgentDefinition, input: string, options: ClaudeInternalRunOptions)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| definition | AgentDefinition | - | - |
| input | string | - | - |
| options | ClaudeInternalRunOptions | - | - |

**Returns**: (none)



### runClaudeAgentWithOptions(definition: AgentDefinition, input: string, options: ClaudeInternalRunOptions)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| definition | AgentDefinition | - | - |
| input | string | - | - |
| options | ClaudeInternalRunOptions | - | - |

**Returns**: (none)



### claudeHeaders(input: {
  definition: AgentDefinition;
  sessionID: string;
  bill: Record<string, number>;
  prefixSHA256: string;
})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | {
  definition: AgentDefinition;
  sessionID: string;
  bill: Record<string | - | - |
| number>;
  prefixSHA256 | string;
} | - | - |

**Returns**: (none)



### stripCaveHeaders(raw: string | undefined)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | string | undefined | - | - |

**Returns**: (none)



### mergeClaudeHeader(raw: string | undefined, name: string, value: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | string | undefined | - | - |
| name | string | - | - |
| value | string | - | - |

**Returns**: (none)



### resolveClaudeModel(definition: AgentDefinition, rootDir: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| definition | AgentDefinition | - | - |
| rootDir | string | - | - |

**Returns**: (none)



### localModel(rootDir: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rootDir | string | - | - |

**Returns**: (none)



### normalizeClaudeModel(model: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: (none)



### claudeEffort(reasoning: AgentDefinition["reasoning"])

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reasoning | AgentDefinition["reasoning"] | - | - |

**Returns**: (none)



### claudeReasoningOptions(model: string, reasoning: AgentDefinition["reasoning"], outputMaxTokens: number | undefined)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |
| reasoning | AgentDefinition["reasoning"] | - | - |
| outputMaxTokens | number | undefined | - | - |

**Returns**: (none)



### claudeThinkingCapability(model: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: (none)



### claudeCredentialRegime(source: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | unknown | - | - |

**Returns**: (none)



### usageFromSDKResult(result: SDKResultMessage, model: string, credentialRegime: ClaudeCredentialRegime)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| result | SDKResultMessage | - | - |
| model | string | - | - |
| credentialRegime | ClaudeCredentialRegime | - | - |

**Returns**: (none)



### integer(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### unprefixClaudeTool(name: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |

**Returns**: (none)



### rejectInternalOptions(options: ClaudeRunOptions)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| options | ClaudeRunOptions | - | - |

**Returns**: (none)



### isRecord(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### abort()

**Returns**: (none)


