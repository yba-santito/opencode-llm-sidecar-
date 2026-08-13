# API Reference: breakpoint_plan_test.go

**Language**: Go

**Source**: `proxy/providers/anthropic/breakpoint_plan_test.go`

---

## Functions

### planBlocks(blocks: int, marked: ...int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| blocks | int | - | - |
| marked | ...int | - | - |

**Returns**: `string`



### itoaTest(n: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |

**Returns**: `string`



### countBreakpoints(t: *testing.T, body: []byte) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | []byte | - | - |

**Returns**: `int`



### TestBreakpointPlanColdStartIsDeterministic(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBreakpointPlanColdStartConvertsStringSystem(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBreakpointPlanColdStartIsPAYGOnly(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBreakpointPlanLookbackGuardIsDisabled(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBreakpointPlanNeverMovesHarnessBreakpoints(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBreakpointPlanRespectsTheFourBudget(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBreakpointPlanClosesTheCompositionDeadZone(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBreakpointPlanLeavesShapesItCannotWalk(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBreakpointPlanSystemBlocksCountAsContent(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBreakpointPlanAdapterSeam(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### blocksWithMarks(count: int, marked: ...int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| count | int | - | - |
| marked | ...int | - | - |

**Returns**: `string`


