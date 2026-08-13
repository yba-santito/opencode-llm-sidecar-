# API Reference: ledger_test.go

**Language**: Go

**Source**: `proxy/internal/gateway/ledger_test.go`

---

## Functions

### creation(tokens: int) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tokens | int | - | - |

**Returns**: `providers`



### warm(l: *sessionLedger, session: string, lv: lever, unknown: calls, tokens: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| l | *sessionLedger | - | - |
| session | string | - | - |
| lv | lever | - | - |
| unknown | calls | - | - |
| tokens | int | - | - |

**Returns**: (none)



### TestLedgerIsInertWithoutASessionID(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLedgerFreezesAfterThreeStrikes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLedgerRequiresBothThresholds(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLedgerJudgesThePreviousRequestsLevers(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLedgerEvictsLeastRecentlyUsed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLedgerEvictionForgetsAFreeze(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLedgerTracksSessionTotals(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLedgerNilReceiverIsPermissive(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


