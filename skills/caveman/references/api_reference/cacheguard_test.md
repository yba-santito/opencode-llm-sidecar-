# API Reference: cacheguard_test.go

**Language**: Go

**Source**: `shared/platform/cacheguard/cacheguard_test.go`

---

## Functions

### TestInspectFreezesFirstPrefixAndRejectsDrift(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestInspectFailsClosedOnUnknownBoundaryOrAdapter(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestDetectVolatileReturnsKindsAndOffsetsNotValues(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestConcurrentFirstObservationCannotReplaceEpoch(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestInspectContentBlindDigestRejectsDrift(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestEpochsMapIsBounded(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### contains(values: []cacheguard.Warning, wanted: cacheguard.Warning) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | []cacheguard.Warning | - | - |
| wanted | cacheguard.Warning | - | - |

**Returns**: `bool`


