# API Reference: context-ir.ts

**Language**: TypeScript

**Source**: `packages/agent/src/context-ir.ts`

---

## Functions

### contextIRToWire(ir: ContextIR)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ir | ContextIR | - | - |

**Returns**: (none)



### contextIRFromWire(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### lowerContext(options: {
  rootDir?: string;
  instructions: string | FileSource;
  tools: readonly ToolDefinition[];
  contexts?: readonly ContextDefinition[];
  memory?: { namespace: string; recallBudget: number };
  output?: { maxTokens: number; schema?: TSchema };
  runtimeSegments?: readonly RuntimeContextSegment[];
  input?: unknown;
})

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| options | {
  rootDir?: string;
  instructions: string | FileSource;
  tools: readonly ToolDefinition[];
  contexts?: readonly ContextDefinition[];
  memory?: { namespace: string; recallBudget: number };
  output?: { maxTokens: number; schema?: TSchema };
  runtimeSegments?: readonly RuntimeContextSegment[];
  input?: unknown;
} | - | - |

**Returns**: (none)



### appendRuntimeContextSegment(lowered: LoweredContext, segment: RuntimeContextSegment)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lowered | LoweredContext | - | - |
| segment | RuntimeContextSegment | - | - |

**Returns**: (none)



### contextBill(ir: ContextIR)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ir | ContextIR | - | - |

**Returns**: (none)



### sourceBytes(source: string | FileSource, rootDir: string)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | FileSource | - | - |
| rootDir | string | - | - |

**Returns**: (none)



### encodeCanonical(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### stableStringify(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### sha256(value: Uint8Array | string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Uint8Array | string | - | - |

**Returns**: (none)



### opaquePayload(input: Uint8Array)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | Uint8Array | - | - |

**Returns**: (none)



### signedJSONValue(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### estimateTokens(body: Uint8Array)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | Uint8Array | - | - |

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



### add(spec: Omit<ContextSegment, "provenanceDigest" | "tokenCount" | "bodyHandle" | "opaque"> & { opaque?: boolean }, body: Uint8Array)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| spec | Omit<ContextSegment | - | - |
| "provenanceDigest" | "tokenCount" | "bodyHandle" | "opaque"> & { opaque? | boolean } | - | - |
| body | Uint8Array | - | - |

**Returns**: (none)


