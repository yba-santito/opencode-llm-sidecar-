# API Reference: prefix_monitor.go

**Language**: Go

**Source**: `proxy/internal/gateway/prefix_monitor.go`

---

## Classes

### prefixMonitor

**Inherits from**: (none)



## Functions

### newPrefixMonitor()

**Returns**: (none)



### observe(unknown: sessionID, componentSHA256: string) → (bust bool, divergingIndex int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | sessionID | - | - |
| componentSHA256 | string | - | - |

**Returns**: `(bust bool, divergingIndex int)`



### put(sessionID: string, components: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |
| components | []string | - | - |

**Returns**: (none)


