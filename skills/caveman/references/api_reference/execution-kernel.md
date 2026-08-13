# API Reference: execution-kernel.ts

**Language**: TypeScript

**Source**: `packages/agent/src/execution-kernel.ts`

---

## Functions

### lowerAgentContext(definition: AgentDefinition, options: {
    rootDir?: string;
    runtimeSegments?: readonly RuntimeContextSegment[];
    input?: unknown;
  } = {})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| definition | AgentDefinition | - | - |
| options | {
    rootDir?: string;
    runtimeSegments?: readonly RuntimeContextSegment[];
    input?: unknown;
  } | {} | - |

**Returns**: (none)



### validatePlanSelection(plan: CavePlan, selected: {
    provider: string;
    model: string;
    reasoning: "off" | "minimal" | "low" | "medium" | "high";
  })

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plan | CavePlan | - | - |
| selected | {
    provider: string;
    model: string;
    reasoning: "off" | "minimal" | "low" | "medium" | "high";
  } | - | - |

**Returns**: (none)



### prepareLockedHarnessExecution(input: {
  build: CaveBuildLock;
  harness: string;
  adapterVersion: string;
  upstreamVersion: string;
  agentId?: string;
  contextIR: ContextIR;
  plan: CavePlan;
})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | {
  build: CaveBuildLock;
  harness: string;
  adapterVersion: string;
  upstreamVersion: string;
  agentId?: string;
  contextIR: ContextIR;
  plan: CavePlan;
} | - | - |

**Returns**: (none)



### validateProviderUsage(evidence: ProviderUsageEvidence, options: {
    expected?: { provider: string; model: string };
    reportedCostUsd?: number;
    requirePriced?: boolean;
  } = {})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| evidence | ProviderUsageEvidence | - | - |
| options | {
    expected?: { provider: string; model: string };
    reportedCostUsd?: number;
    requirePriced?: boolean;
  } | {} | - |

**Returns**: (none)


