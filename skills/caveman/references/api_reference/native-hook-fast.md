# API Reference: native-hook-fast.ts

**Language**: TypeScript

**Source**: `packages/cli/src/native-hook-fast.ts`

---

## Functions

### caveHome()

**Returns**: (none)



### object(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### configuredMode()

**Returns**: (none)



### configuredCore()

**Returns**: (none)



### policyMode()

**Returns**: (none)



### profile()

**Returns**: (none)



### stdin()

**Async function**

**Returns**: (none)



### bounded(value: unknown, max = 160)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |
| max | None | 160 | - |

**Returns**: (none)



### digestObject(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### digest(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### taskType(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### taskContinuation(value: unknown, claimed: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |
| claimed | unknown | - | - |

**Returns**: (none)



### taskTerms(value: unknown, claimed: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |
| claimed | unknown | - | - |

**Returns**: (none)



### exactOutput(event: Record<string, unknown>)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| event | Record<string | - | - |
| unknown> | None | - | - |

**Returns**: (none)



### inputState(input: unknown, cwd: string | undefined)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | unknown | - | - |
| cwd | string | undefined | - | - |

**Returns**: (none)



### needsRepositoryState(name: string, input: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |
| input | unknown | - | - |

**Returns**: (none)



### gitDir(cwd: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cwd | string | - | - |

**Returns**: (none)



### repositoryState(cwd: string | undefined)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cwd | string | undefined | - | - |

**Returns**: (none)



### request(agent: NativeAgent, eventName: string, sessionID: string, event: Record<string, unknown>)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| agent | NativeAgent | - | - |
| eventName | string | - | - |
| sessionID | string | - | - |
| event | Record<string | - | - |
| unknown> | None | - | - |

**Returns**: (none)



### validResponse(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### callRuntime(value: Record<string, unknown>)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Record<string | - | - |
| unknown> | None | - | - |

**Returns**: (none)



### fallback(entry: Record<string, unknown>)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| entry | Record<string | - | - |
| unknown> | None | - | - |

**Returns**: (none)



### delegateToFullCLI(raw: Buffer, agent: NativeAgent)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | Buffer | - | - |
| agent | NativeAgent | - | - |

**Returns**: (none)



### main()

**Async function**

**Returns**: (none)



### include(label: string, path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| label | string | - | - |
| path | string | - | - |

**Returns**: (none)



### finish(response?: RuntimeResponse)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| response? | RuntimeResponse | - | - |

**Returns**: (none)


