# API Reference: agent-mcp.ts

**Language**: TypeScript

**Source**: `packages/cli/src/agent-mcp.ts`

---

## Functions

### objectArg(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### allowlistedObject(value: JSONValue, fields: Set<string>)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | JSONValue | - | - |
| fields | Set<string> | - | - |

**Returns**: (none)



### metadataOnlyTrace(trace: JSONValue)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| trace | JSONValue | - | - |

**Returns**: (none)



### metadataOnlySpans(value: JSONValue)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | JSONValue | - | - |

**Returns**: (none)



### stringArg(args: JSONObject, key: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | JSONObject | - | - |
| key | string | - | - |

**Returns**: (none)



### result(value: JSONValue)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | JSONValue | - | - |

**Returns**: (none)



### errorResult(error: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| error | unknown | - | - |

**Returns**: (none)



### withProjectQuery(client: AgentMcpClient, path: string)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| client | AgentMcpClient | - | - |
| path | string | - | - |

**Returns**: (none)



### validateTraceFilters(args: JSONObject)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | JSONObject | - | - |

**Returns**: (none)



### optionalEnum(args: JSONObject, key: string, values: string[])

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | JSONObject | - | - |
| key | string | - | - |
| values | string[] | - | - |

**Returns**: (none)



### validateTraceSearch(args: JSONObject)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | JSONObject | - | - |

**Returns**: (none)



### callTool(client: AgentMcpClient, name: string, rawArgs: unknown)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| client | AgentMcpClient | - | - |
| name | string | - | - |
| rawArgs | unknown | - | - |

**Returns**: (none)



### rpcError(id: JSONValue | undefined, code: number, message: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | JSONValue | undefined | - | - |
| code | number | - | - |
| message | string | - | - |

**Returns**: (none)



### handleMessage(client: AgentMcpClient, message: unknown, session: McpSessionState)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| client | AgentMcpClient | - | - |
| message | unknown | - | - |
| session | McpSessionState | - | - |

**Returns**: (none)



### serveAgentMcp(client: AgentMcpClient, input: Readable = process.stdin, output: Writable = process.stdout)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| client | AgentMcpClient | - | - |
| input | Readable | process.stdin | - |
| output | Writable | process.stdout | - |

**Returns**: (none)


