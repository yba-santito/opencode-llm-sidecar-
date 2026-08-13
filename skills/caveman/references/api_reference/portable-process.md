# API Reference: portable-process.ts

**Language**: TypeScript

**Source**: `packages/agent/src/portable-process.ts`

---

## Functions

### envValue(env: NodeJS.ProcessEnv, name: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| env | NodeJS.ProcessEnv | - | - |
| name | string | - | - |

**Returns**: (none)



### resolveWindowsCommand(command: string, env: NodeJS.ProcessEnv)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| command | string | - | - |
| env | NodeJS.ProcessEnv | - | - |

**Returns**: (none)



### parseWindowsNodeShim(source: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |

**Returns**: (none)



### portableInvocation(command: string, args: readonly string[], options: {
    platform?: NodeJS.Platform;
    env?: NodeJS.ProcessEnv;
    execPath?: string;
  } = {})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| command | string | - | - |
| args | readonly string[] | - | - |
| options | {
    platform?: NodeJS.Platform;
    env?: NodeJS.ProcessEnv;
    execPath?: string;
  } | {} | - |

**Returns**: (none)



### hostShellInvocation(source: string, platform: NodeJS.Platform = process.platform, env: NodeJS.ProcessEnv = process.env)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| platform | NodeJS.Platform | process.platform | - |
| env | NodeJS.ProcessEnv | process.env | - |

**Returns**: (none)



### killProcessTree(child: ChildProcess, signal: NodeJS.Signals = "SIGKILL", options: {
    platform?: NodeJS.Platform;
    kill?: typeof process.kill;
    taskkill?: typeof spawnSync;
  } = {})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| child | ChildProcess | - | - |
| signal | NodeJS.Signals | "SIGKILL" | - |
| options | {
    platform?: NodeJS.Platform;
    kill?: typeof process.kill;
    taskkill?: typeof spawnSync;
  } | {} | - |

**Returns**: (none)


