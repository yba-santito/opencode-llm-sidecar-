# API Reference: dev-loader.ts

**Language**: TypeScript

**Source**: `packages/agent/src/dev-loader.ts`

---

## Functions

### loadDevModule(root: string, entryPath: string)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | string | - | - |
| entryPath | string | - | - |

**Returns**: (none)



### agentFileSourcePaths(definition: AgentDefinition)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| definition | AgentDefinition | - | - |

**Returns**: (none)



### copyOptional(source: string, destination: string)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| destination | string | - | - |

**Returns**: (none)



### copyProjectFile(root: string, staging: string, source: string, kind: "source graph" | "file source")

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | string | - | - |
| staging | string | - | - |
| source | string | - | - |
| kind | "source graph" | "file source" | - | - |

**Returns**: (none)



### remapDevError(error: unknown, staging: string, root: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| error | unknown | - | - |
| staging | string | - | - |
| root | string | - | - |

**Returns**: (none)



### escapesRoot(path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: (none)


