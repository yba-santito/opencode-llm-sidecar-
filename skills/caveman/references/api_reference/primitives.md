# API Reference: primitives.ts

**Language**: TypeScript

**Source**: `packages/agent/src/primitives.ts`

---

## Functions

### auto()

**Returns**: (none)



### file(path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: (none)



### tool(options: ToolOptions<TSchema, unknown> |
    StandardToolOptions<unknown, unknown, unknown> |
    StandardJSONToolOptions<unknown, unknown, unknown>)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| options | ToolOptions<TSchema | - | - |
| unknown> |
    StandardToolOptions<unknown | None | - | - |
| unknown | None | - | - |
| unknown> |
    StandardJSONToolOptions<unknown | None | - | - |
| unknown | None | - | - |
| unknown> | None | - | - |

**Returns**: (none)



### standardToolSchema(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### isRecord(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### artifactResultPolicy(definition: ArtifactDefinition)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| definition | ArtifactDefinition | - | - |

**Returns**: (none)



### memoryTTLMilliseconds(value: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: (none)



### memory(options: {
  namespace: string;
  provenance?: MemoryDefinition["provenance"];
  ttl: string;
  recallBudget: number;
  consent?: MemoryDefinition["consent"];
})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| options | {
  namespace: string;
  provenance?: MemoryDefinition["provenance"];
  ttl: string;
  recallBudget: number;
  consent?: MemoryDefinition["consent"];
} | - | - |

**Returns**: (none)



### context(options: {
  id: string;
  kind: ContextKind;
  source: string | FileSource;
  stability: ContextStability;
  safety?: SafetyClass;
  priority?: ContextPriority;
  recovery?: RecoveryKind;
  cacheRegion?: CacheRegion;
  privacy?: PrivacyClass;
  opaque?: boolean;
  ttlTurns?: number;
})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| options | {
  id: string;
  kind: ContextKind;
  source: string | FileSource;
  stability: ContextStability;
  safety?: SafetyClass;
  priority?: ContextPriority;
  recovery?: RecoveryKind;
  cacheRegion?: CacheRegion;
  privacy?: PrivacyClass;
  opaque?: boolean;
  ttlTurns?: number;
} | - | - |

**Returns**: (none)



### artifact(options: {
  strategy?: ArtifactDefinition["strategy"];
  maxInlineTokens?: number;
  recovery?: ArtifactDefinition["recovery"];
} = {})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| options | {
  strategy?: ArtifactDefinition["strategy"];
  maxInlineTokens?: number;
  recovery?: ArtifactDefinition["recovery"];
} | {} | - |

**Returns**: (none)



### evalFixture(options: {
  id: string;
  approved?: boolean;
  required?: boolean;
  input: unknown;
  tools?: { mode: "fixture" | "live"; sandbox?: string };
  quality: QualityGrader[];
  guardrails?: EvalGuardrail[];
})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| options | {
  id: string;
  approved?: boolean;
  required?: boolean;
  input: unknown;
  tools?: { mode: "fixture" | "live"; sandbox?: string };
  quality: QualityGrader[];
  guardrails?: EvalGuardrail[];
} | - | - |

**Returns**: (none)


