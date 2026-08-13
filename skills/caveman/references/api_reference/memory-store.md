# API Reference: memory-store.ts

**Language**: TypeScript

**Source**: `packages/agent/src/memory-store.ts`

---

## Functions

### defaultRoot()

**Returns**: (none)



### memoryFilePath(config: MemoryStoreConfig | undefined, agentId: string, namespace: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| config | MemoryStoreConfig | undefined | - | - |
| agentId | string | - | - |
| namespace | string | - | - |

**Returns**: (none)



### isMemoryEntry(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### readMemories(filePath: string)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| filePath | string | - | - |

**Returns**: (none)



### atomicWrite(filePath: string, entries: readonly MemoryEntry[])

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| filePath | string | - | - |
| entries | readonly MemoryEntry[] | - | - |

**Returns**: (none)



### mutateMemories(filePath: string, mutator: (entries: MemoryEntry[])

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| filePath | string | - | - |
| mutator | (entries: MemoryEntry[] | - | - |

**Returns**: (none)


