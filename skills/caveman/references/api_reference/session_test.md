# API Reference: session_test.go

**Language**: Go

**Source**: `browse/session_test.go`

---

## Classes

### fakeDriver

**Inherits from**: (none)



## Functions

### Snapshot(_: context.Context, url: string, _: time.Duration) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| url | string | - | - |
| _ | time.Duration | - | - |

**Returns**: `([]byte, error)`



### Act(_: context.Context, req: ActionRequest, target: Target) → (ActionResult, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| req | ActionRequest | - | - |
| target | Target | - | - |

**Returns**: `(ActionResult, error)`



### Eval(_: context.Context, expression: string) → (any, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| expression | string | - | - |

**Returns**: `(any, error)`



### Close() → error

**Returns**: `error`



### testSession(t: *testing.T) → (*Session, *fakeDriver)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: `(*Session, *fakeDriver)`



### TestBrowserToolsExactlyFour(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSessionCloseAndTargetSnapshotsAreSafe(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUnavailableSessionFailsClosedWithoutPanicking(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSnapshotCachesUIDTargetsAndRecoversExactAXTree(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSnapshotIframeTreeStillCompressesToUIDs(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSnapshotPassThroughFailsClosedAndKeepsUIDCache(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBrowserToolsFailClosedOnInvalidArgumentsAndDriverErrors(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSnapshotQueryFocusesOutputAndTargetCache(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSnapshotRejectsDangerousURLsAndUnboundedWaitWithoutDriving(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestActRejectsUnknownActionBeforeUIDLookup(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestActUsesCachedTargetAndFailsClosedOnUnknownUID(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRecoverUnknownHandleFailsClosed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestEvalReturnsResult(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### jsonArgs(t: *testing.T, v: any) → json

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| v | any | - | - |

**Returns**: `json`



### decodeToolText(t: *testing.T, tr: mcp.ToolResult, out: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| tr | mcp.ToolResult | - | - |
| out | any | - | - |

**Returns**: (none)


