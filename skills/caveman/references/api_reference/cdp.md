# API Reference: cdp.go

**Language**: Go

**Source**: `browse/cdp.go`

---

## Classes

### CDPOptions

**Inherits from**: (none)



### CDPDriver

**Inherits from**: (none)



### boxPoint

**Inherits from**: (none)



## Functions

### NewCDPDriver(parent: context.Context, opts: CDPOptions) → (*CDPDriver, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parent | context.Context | - | - |
| opts | CDPOptions | - | - |

**Returns**: `(*CDPDriver, error)`



### Close() → error

**Returns**: `error`



### TargetID() → string

**Returns**: `string`



### requestContext(parent: context.Context) → (context.Context, context.CancelFunc)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parent | context.Context | - | - |

**Returns**: `(context.Context, context.CancelFunc)`



### Snapshot(ctx: context.Context, url: string, wait: time.Duration) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| url | string | - | - |
| wait | time.Duration | - | - |

**Returns**: `([]byte, error)`



### Act(ctx: context.Context, req: ActionRequest, target: Target) → (ActionResult, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| req | ActionRequest | - | - |
| target | Target | - | - |

**Returns**: `(ActionResult, error)`



### dispatchedAction() → ActionResult

**Returns**: `ActionResult`



### scrollIntoView(ctx: context.Context, target: Target) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| target | Target | - | - |

**Returns**: `error`



### Shutdown(ctx: context.Context) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |

**Returns**: `error`



### Eval(ctx: context.Context, expression: string) → (any, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| expression | string | - | - |

**Returns**: `(any, error)`



### waitActionable(ctx: context.Context, target: Target) → (float64, float64, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| target | Target | - | - |

**Returns**: `(float64, float64, error)`



### box(ctx: context.Context, target: Target) → (float64, float64, float64, float64, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| target | Target | - | - |

**Returns**: `(float64, float64, float64, float64, error)`



### visible(ctx: context.Context, target: Target) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| target | Target | - | - |

**Returns**: `(bool, error)`



### enabled(ctx: context.Context, target: Target) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| target | Target | - | - |

**Returns**: `(bool, error)`



### receivesEvents(ctx: context.Context, target: Target, unknown: x, y: float64) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| target | Target | - | - |
| unknown | x | - | - |
| y | float64 | - | - |

**Returns**: `(bool, error)`



### click(ctx: context.Context, unknown: x, y: float64) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | x | - | - |
| y | float64 | - | - |

**Returns**: `error`



### callOnNode(ctx: context.Context, target: Target, fn: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| target | Target | - | - |
| fn | string | - | - |

**Returns**: `error`



### callBoolOnNode(ctx: context.Context, target: Target, fn: string) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| target | Target | - | - |
| fn | string | - | - |

**Returns**: `(bool, error)`



### decodeBoolObject(res: *runtime.RemoteObject) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| res | *runtime.RemoteObject | - | - |

**Returns**: `(bool, error)`



### callOnNodeRaw(ctx: context.Context, target: Target, fn: string) → (*runtime.RemoteObject, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| target | Target | - | - |
| fn | string | - | - |

**Returns**: `(*runtime.RemoteObject, error)`



### jsString(s: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `string`



### DefaultUserDataDir(home: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |

**Returns**: `string`


