# API Reference: mask_elidable_test.go

**Language**: Go

**Source**: `proxy/internal/nativeruntime/mask_elidable_test.go`

---

## Functions

### maskRuntime(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### maskDecision(t: *testing.T, runtime: *Runtime, output: []byte) → (bool, Response)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| runtime | *Runtime | - | - |
| output | []byte | - | - |

**Returns**: `(bool, Response)`



### jsonAPIPage(records: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| records | int | - | - |

**Returns**: (none)



### csvExport(rows: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rows | int | - | - |

**Returns**: (none)



### ndjsonEvents(events: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| events | int | - | - |

**Returns**: (none)



### prosebBlob(size: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| size | int | - | - |

**Returns**: (none)



### TestStructuredToolOutputIsNotMasked(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUnsummarizableToolOutputIsStillMasked(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestMaskThresholdUnchangedForMaskableClasses(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestUnavailableClassifierFallsBackToMasking(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestMaskAndElisionCompose(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


