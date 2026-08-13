# API Reference: code.ts

**Language**: TypeScript

**Source**: `packages/agent/src/code.ts`

---

## Functions

### defaultCodingPlan(modelID: string, namespace: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| modelID | string | - | - |
| namespace | string | - | - |

**Returns**: (none)



### createCodingAgent(options: CodingAgentOptions = {})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| options | CodingAgentOptions | {} | - |

**Returns**: (none)



### codingTools(workspace: string, caps: typeof CODING_TOOL_OUTPUT_CAPS, record: (label: string, text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| workspace | string | - | - |
| caps | typeof CODING_TOOL_OUTPUT_CAPS | - | - |
| record | (label: string | - | - |
| text | string | - | - |

**Returns**: (none)



### containedPath(canonicalWorkspace: string, candidate: string)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| canonicalWorkspace | string | - | - |
| candidate | string | - | - |

**Returns**: (none)



### escapesRoot(path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: (none)



### canonicalizePath(target: string)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| target | string | - | - |

**Returns**: (none)



### capOutput(text: string, maxBytes: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| maxBytes | number | - | - |

**Returns**: (none)



### buildCodingProcessEnv()

**Returns**: (none)



### runProcess(command: string, args: readonly string[], cwd: string, timeoutMs: number, signal?: AbortSignal)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| command | string | - | - |
| args | readonly string[] | - | - |
| cwd | string | - | - |
| timeoutMs | number | - | - |
| signal? | AbortSignal | - | - |

**Returns**: (none)



### resolveCodingModelID(explicit: string | undefined)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| explicit | string | undefined | - | - |

**Returns**: (none)



### startCodingSession(codingAgent: CodingAgent, options: CodingSessionOptions = {})

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| codingAgent | CodingAgent | - | - |
| options | CodingSessionOptions | {} | - |

**Returns**: (none)



### turnRoute(session: CodingSession)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| session | CodingSession | - | - |

**Returns**: (none)



### degrade(session: CodingSession)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| session | CodingSession | - | - |

**Returns**: (none)



### classifyTurnFailure(error: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| error | unknown | - | - |

**Returns**: (none)



### runCodingTurn(session: CodingSession, input: string, overrides: RunOptions = {})

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| session | CodingSession | - | - |
| input | string | - | - |
| overrides | RunOptions | {} | - |

**Returns**: (none)



### turnBill(turn: number, result: RunResult)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| turn | number | - | - |
| result | RunResult | - | - |

**Returns**: (none)



### sessionBill(session: CodingSession)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| session | CodingSession | - | - |

**Returns**: (none)



### count(value: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | number | - | - |

**Returns**: (none)



### formatTurnBill(bill: TurnBill, sessionSaved: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| bill | TurnBill | - | - |
| sessionSaved | number | - | - |

**Returns**: (none)



### formatSessionBill(bill: SessionBill)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| bill | SessionBill | - | - |

**Returns**: (none)



### proveRecovery(session: CodingSession)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| session | CodingSession | - | - |

**Returns**: (none)



### formatRecoveryProof(proof: CodingRecoveryProof)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| proof | CodingRecoveryProof | - | - |

**Returns**: (none)



### runCodingSession(options: CodingSessionRunOptions = {})

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| options | CodingSessionRunOptions | {} | - |

**Returns**: (none)



### showProof(session: CodingSession, write: (value: string)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| session | CodingSession | - | - |
| write | (value: string | - | - |

**Returns**: (none)



### record(label: string, text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| label | string | - | - |
| text | string | - | - |

**Returns**: (none)



### workspaceRoot()

**Returns**: (none)



### contained(candidate: string)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| candidate | string | - | - |

**Returns**: (none)



### collect(chunk: Buffer)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| chunk | Buffer | - | - |

**Returns**: (none)



### killTree()

**Returns**: (none)



### abort()

**Returns**: (none)



### settle(run: ProcessRun)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| run | ProcessRun | - | - |

**Returns**: (none)



### finish()

**Returns**: (none)



### sum(pick: (bill: TurnBill)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pick | (bill: TurnBill | - | - |

**Returns**: (none)



### write(value: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: (none)



### prompt()

**Returns**: (none)


