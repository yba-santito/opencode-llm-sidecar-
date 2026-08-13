# API Reference: ledger.go

**Language**: Go

**Source**: `proxy/internal/gateway/ledger.go`

---

## Classes

### sessionLedger

**Inherits from**: (none)



### ledgerEntry

**Inherits from**: (none)



## Functions

### newSessionLedger()

**Returns**: (none)



### LeverAllowed(sessionID: string, lv: lever) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |
| lv | lever | - | - |

**Returns**: `bool`



### FrozenLevers(sessionID: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |

**Returns**: (none)



### Observe(sessionID: string, active: []lever, usage: providers.UsageObservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |
| active | []lever | - | - |
| usage | providers.UsageObservation | - | - |

**Returns**: (none)



### entryLocked(sessionID: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |

**Returns**: (none)


