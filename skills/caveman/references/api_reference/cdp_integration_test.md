# API Reference: cdp_integration_test.go

**Language**: Go

**Source**: `browse/cdp_integration_test.go`

---

## Classes

### recordingDriver

**Inherits from**: (none)



## Functions

### Snapshot(ctx: context.Context, pageURL: string, wait: time.Duration) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| pageURL | string | - | - |
| wait | time.Duration | - | - |

**Returns**: `([]byte, error)`



### TestCDPActionabilityRejectsDisabledButton(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCDPFullTokenEfficientReadActVerifyRecoverLoop(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCDPStaleUIDFailsClosedAfterDOMReplacement(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCDPQueryScalesOnTwoHundredRowDashboard(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### uidByName(t: *testing.T, snapshot: string, name: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| snapshot | string | - | - |
| name | string | - | - |

**Returns**: `string`



### urlEscape(s: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `string`


