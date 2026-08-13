# API Reference: hook.go

**Language**: Go

**Source**: `proxy/internal/nativehook/hook.go`

---

## Functions

### Run(ctx: context.Context, unknown: home, unknown: agent, adapterPath: string, raw: []byte, unknown: stdout, stderr: io.Writer) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | home | - | - |
| unknown | agent | - | - |
| adapterPath | string | - | - |
| raw | []byte | - | - |
| unknown | stdout | - | - |
| stderr | io.Writer | - | - |

**Returns**: `error`



### validAgent(agent: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| agent | string | - | - |

**Returns**: `bool`



### normalizeEvent(unknown: agent, value: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | agent | - | - |
| value | string | - | - |

**Returns**: `string`



### preToolRequest(ctx: context.Context, unknown: home, unknown: agent, unknown: eventName, sessionID: string, event: hostEvent) → nativeruntime

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | home | - | - |
| unknown | agent | - | - |
| unknown | eventName | - | - |
| sessionID | string | - | - |
| event | hostEvent | - | - |

**Returns**: `nativeruntime`



### toolNeedsRepositoryState(name: string, input: any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |
| input | any | - | - |

**Returns**: `bool`



### currentRepositoryState(ctx: context.Context, cwd: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| cwd | string | - | - |

**Returns**: `string`



### findGitDir(cwd: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cwd | string | - | - |

**Returns**: `string`



### nativePolicy(home: string) → (string, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |

**Returns**: `(string, string)`



### configuredMode(home: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |

**Returns**: `string`



### fileInputState(cwd: string, input: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cwd | string | - | - |
| input | any | - | - |

**Returns**: `string`



### recordFallback(unknown: home, unknown: agent, unknown: eventName, unknown: sessionID, toolName: string, raw: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | home | - | - |
| unknown | agent | - | - |
| unknown | eventName | - | - |
| unknown | sessionID | - | - |
| toolName | string | - | - |
| raw | []byte | - | - |

**Returns**: (none)



### delegate(ctx: context.Context, unknown: adapterPath, agent: string, raw: []byte, unknown: stdout, stderr: io.Writer)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | adapterPath | - | - |
| agent | string | - | - |
| raw | []byte | - | - |
| unknown | stdout | - | - |
| stderr | io.Writer | - | - |

**Returns**: (none)



### firstString(event: hostEvent, keys: ...string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| event | hostEvent | - | - |
| keys | ...string | - | - |

**Returns**: `string`



### bounded(value: string, max: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |
| max | int | - | - |

**Returns**: `string`


