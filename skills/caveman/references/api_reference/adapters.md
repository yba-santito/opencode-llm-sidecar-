# API Reference: adapters.ts

**Language**: TypeScript

**Source**: `packages/agent/src/adapters.ts`

---

## Functions

### createHarnessAdapter(id: HarnessID, identity: HarnessAdapterIdentity, wireContract: Readonly<Record<string, unknown>>, invoke: HarnessInvoke)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | HarnessID | - | - |
| identity | HarnessAdapterIdentity | - | - |
| wireContract | Readonly<Record<string | - | - |
| unknown>> | None | - | - |
| invoke | HarnessInvoke | - | - |

**Returns**: (none)



### createVercelAISDKAdapter(identity: HarnessAdapterIdentity, agent: VercelToolLoopAgentBinding)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| identity | HarnessAdapterIdentity | - | - |
| agent | VercelToolLoopAgentBinding | - | - |

**Returns**: (none)



### createEveAdapter(identity: HarnessAdapterIdentity, session: EveSessionBinding)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| identity | HarnessAdapterIdentity | - | - |
| session | EveSessionBinding | - | - |

**Returns**: (none)



### createMastraAdapter(identity: HarnessAdapterIdentity, agent: MastraAgentBinding, options: MastraAdapterOptions = {})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| identity | HarnessAdapterIdentity | - | - |
| agent | MastraAgentBinding | - | - |
| options | MastraAdapterOptions | {} | - |

**Returns**: (none)



### harnessExecution(input: {
  request: Readonly<HarnessRequest>;
  text: string;
  provider: string;
  model: string;
  usage: NormalizedUsage;
  latencyMs: number;
})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | {
  request: Readonly<HarnessRequest>;
  text: string;
  provider: string;
  model: string;
  usage: NormalizedUsage;
  latencyMs: number;
} | - | - |

**Returns**: (none)



### usageFromAISDK(value: unknown, reasoningRequired: boolean)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |
| reasoningRequired | boolean | - | - |

**Returns**: (none)



### usageFromMastra(value: unknown, reasoningRequired: boolean)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |
| reasoningRequired | boolean | - | - |

**Returns**: (none)



### usageFromEveEvents(events: unknown[], reasoningRequired: boolean)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| events | unknown[] | - | - |
| reasoningRequired | boolean | - | - |

**Returns**: (none)



### normalizeUsage(value: Record<keyof NormalizedUsage, unknown>, reasoningRequired: boolean, error: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Record<keyof NormalizedUsage | - | - |
| unknown> | None | - | - |
| reasoningRequired | boolean | - | - |
| error | string | - | - |

**Returns**: (none)



### eveRuntimeIdentity(events: unknown[])

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| events | unknown[] | - | - |

**Returns**: (none)



### expectedProviderModel(plan: CavePlan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plan | CavePlan | - | - |

**Returns**: (none)



### normalizedResponseModel(value: unknown, provider: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |
| provider | string | - | - |

**Returns**: (none)



### terminalFinishReason(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### record(value: unknown, error: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |
| error | string | - | - |

**Returns**: (none)



### strictInteger(value: unknown, error: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |
| error | string | - | - |

**Returns**: (none)



### optionalInteger(value: unknown, error: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |
| error | string | - | - |

**Returns**: (none)



### isAborted(signal: AbortSignal | undefined)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| signal | AbortSignal | undefined | - | - |

**Returns**: (none)



### installedPackageVersion(pkg: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pkg | string | - | - |

**Returns**: (none)



### assertSupportedUpstream(identity: HarnessAdapterIdentity, expected: string, harness: string, pkg: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| identity | HarnessAdapterIdentity | - | - |
| expected | string | - | - |
| harness | string | - | - |
| pkg | string | - | - |

**Returns**: (none)



### canonicalRecord(value: Readonly<Record<string, unknown>>)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Readonly<Record<string | - | - |
| unknown>> | None | - | - |

**Returns**: (none)



### isRecord(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### snapshotRequest(request: HarnessRequest)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | HarnessRequest | - | - |

**Returns**: (none)



### snapshotExecution(value: HarnessExecution)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | HarnessExecution | - | - |

**Returns**: (none)



### validateTransformEvidence(evidence: Pick<HarnessRequest, "evaluatedTransformIDs" | "appliedTransformIDs" | "recoveryResolved">, plan: CavePlan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| evidence | Pick<HarnessRequest | - | - |
| "evaluatedTransformIDs" | "appliedTransformIDs" | "recoveryResolved"> | None | - | - |
| plan | CavePlan | - | - |

**Returns**: (none)



### validateExecution(execution: HarnessExecution, plan: CavePlan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| execution | HarnessExecution | - | - |
| plan | CavePlan | - | - |

**Returns**: (none)



### createPiAdapter(identity: HarnessAdapterIdentity, invoke: HarnessInvoke)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| identity | HarnessAdapterIdentity | - | - |
| invoke | HarnessInvoke | - | - |

**Returns**: (none)



### createClaudeAdapter(identity: HarnessAdapterIdentity, invoke: HarnessInvoke)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| identity | HarnessAdapterIdentity | - | - |
| invoke | HarnessInvoke | - | - |

**Returns**: (none)


