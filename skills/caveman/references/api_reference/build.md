# API Reference: build.ts

**Language**: TypeScript

**Source**: `packages/agent/src/build.ts`

---

## Functions

### defineBuild(options: Partial<BuildConfig> & Pick<BuildConfig, "entry" | "evals">)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| options | Partial<BuildConfig> & Pick<BuildConfig | - | - |
| "entry" | "evals"> | None | - | - |

**Returns**: (none)



### compile(input: CompileInput)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | CompileInput | - | - |

**Returns**: (none)



### compileAndWrite(input: CompileInput, lockPath = ".caveman/agent.lock.json")

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | CompileInput | - | - |
| lockPath | None | ".caveman/agent.lock.json" | - |

**Returns**: (none)



### checkLock(lock: CaveBuildLock, current: {
  sourceSha256: string;
  agentDefinitionSha256: string;
  contextIRSha256: string;
  evalSuiteSha256: string;
  runtimeVersion: string;
  adapterVersion: string;
  upstreamVersion: string;
  transformRegistrySha256: string;
  externalProvenanceSha256?: string;
  catalogSha256: string;
})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lock | CaveBuildLock | - | - |
| current | {
  sourceSha256: string;
  agentDefinitionSha256: string;
  contextIRSha256: string;
  evalSuiteSha256: string;
  runtimeVersion: string;
  adapterVersion: string;
  upstreamVersion: string;
  transformRegistrySha256: string;
  externalProvenanceSha256?: string;
  catalogSha256: string;
} | - | - |

**Returns**: (none)



### parseCaveBuildLock(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### validPlanShape(plan: Record<string, unknown>)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plan | Record<string | - | - |
| unknown> | None | - | - |

**Returns**: (none)



### lockIntegrityErrors(lock: CaveBuildLock)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lock | CaveBuildLock | - | - |

**Returns**: (none)



### agentDefinitionSHA256(agent: AgentDefinition)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| agent | AgentDefinition | - | - |

**Returns**: (none)



### toolDefinitionSHA256(tool: ToolDefinition)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tool | ToolDefinition | - | - |

**Returns**: (none)



### contextIRSHA256(contextIR: ContextIR)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| contextIR | ContextIR | - | - |

**Returns**: (none)



### lockableValue(value: unknown, seen: WeakSet<object>)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |
| seen | WeakSet<object> | - | - |

**Returns**: (none)



### isRecord(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### exactKeys(value: Record<string, unknown>, expected: string[])

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Record<string | - | - |
| unknown> | None | - | - |
| expected | string[] | - | - |

**Returns**: (none)



### generateCandidatePlans(agent: AgentDefinition, contextIR: ContextIR, baseline: CavePlan, models: string[], approvedEval: boolean, preferredTransforms: ReadonlyMap<string, string> = new Map()

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| agent | AgentDefinition | - | - |
| contextIR | ContextIR | - | - |
| baseline | CavePlan | - | - |
| models | string[] | - | - |
| approvedEval | boolean | - | - |
| preferredTransforms | ReadonlyMap<string | - | - |
| string> | None | new Map( | - |

**Returns**: (none)



### applyCandidatePolicy(candidates: readonly CandidatePlan[], policy: CandidatePolicy)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| candidates | readonly CandidatePlan[] | - | - |
| policy | CandidatePolicy | - | - |

**Returns**: (none)



### opaqueSegmentID(id: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | string | - | - |

**Returns**: (none)



### summarizeCandidate(candidate: CandidatePlan, evidence: Completed["evidence"], baseline: Completed["evidence"], config: BuildConfig, seedDigest: string, evals: EvalDefinition[])

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| candidate | CandidatePlan | - | - |
| evidence | Completed["evidence"] | - | - |
| baseline | Completed["evidence"] | - | - |
| config | BuildConfig | - | - |
| seedDigest | string | - | - |
| evals | EvalDefinition[] | - | - |

**Returns**: (none)



### cacheGatePass(evidence: Completed["evidence"], baseline: Completed["evidence"], plan: CavePlan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| evidence | Completed["evidence"] | - | - |
| baseline | Completed["evidence"] | - | - |
| plan | CavePlan | - | - |

**Returns**: (none)



### completeEvidence(value: RunEvidence)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | RunEvidence | - | - |

**Returns**: (none)



### knownGrader(type: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| type | string | - | - |

**Returns**: (none)



### firstUnknownGrader(value: RunEvidence)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | RunEvidence | - | - |

**Returns**: (none)



### selectionOrder(a: Completed, b: Completed)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| a | Completed | - | - |
| b | Completed | - | - |

**Returns**: (none)



### providerVisibleTokens(candidate: Completed)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| candidate | Completed | - | - |

**Returns**: (none)



### percentile(values: number[], fraction: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | number[] | - | - |
| fraction | number | - | - |

**Returns**: (none)



### bootstrapLCB95(values: number[], digest: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | number[] | - | - |
| digest | string | - | - |

**Returns**: (none)



### recoveryTools(routes: CavePlan["segment_routes"])

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| routes | CavePlan["segment_routes"] | - | - |

**Returns**: (none)



### deduplicatePlans(candidates: CandidatePlan[])

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| candidates | CandidatePlan[] | - | - |

**Returns**: (none)



### stableID(value: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: (none)



### emptyResult(status: CompileStatus, reason: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| status | CompileStatus | - | - |
| reason | string | - | - |

**Returns**: (none)



### roundUsd(value: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | number | - | - |

**Returns**: (none)



### round(value: number, digits: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | number | - | - |
| digits | number | - | - |

**Returns**: (none)


