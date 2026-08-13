# API Reference: store.go

**Language**: Go

**Source**: `proxy/internal/store/store.go`

---

## Classes

### Store

**Inherits from**: (none)



### Stats

**Inherits from**: (none)



### ObserveSummary

**Inherits from**: (none)



### RecentRequest

**Inherits from**: (none)



### AgentEvidence

**Inherits from**: (none)



## Functions

### sqliteDSN(path: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `string`



### Open(path: string, logger: *slog.Logger) → (*Store, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| logger | *slog.Logger | - | - |

**Returns**: `(*Store, error)`



### Close() → error

**Returns**: `error`



### Record(rec: gateway.RequestRecord)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rec | gateway.RequestRecord | - | - |

**Returns**: (none)



### AgentEvidenceForBuild(unknown: sessionID, unknown: buildSHA256, planSHA256: string) → ([]AgentEvidence, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | sessionID | - | - |
| unknown | buildSHA256 | - | - |
| planSHA256 | string | - | - |

**Returns**: `([]AgentEvidence, error)`



### SessionUsage(sessionID: string) → (sessionusage.Snapshot, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |

**Returns**: `(sessionusage.Snapshot, error)`



### Summary() → (Stats, error)

**Returns**: `(Stats, error)`



### ObserveSummarySince(since: string) → (ObserveSummary, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| since | string | - | - |

**Returns**: `(ObserveSummary, error)`



### roundUSDCents(v: float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | float64 | - | - |

**Returns**: `float64`



### countRequestProvenance(column: string, out: map[string]int64) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| column | string | - | - |
| out | map[string]int64 | - | - |

**Returns**: `error`



### countRequestProvenanceWhere(column: string, out: map[string]int64, where: string, args: ...any) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| column | string | - | - |
| out | map[string]int64 | - | - |
| where | string | - | - |
| args | ...any | - | - |

**Returns**: `error`



### validDigest(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### validDigestList(value: string, limit: int) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |
| limit | int | - | - |

**Returns**: `bool`



### validEvidenceToken(value: string, limit: int) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |
| limit | int | - | - |

**Returns**: `bool`



### validEvidenceValue(value: string, limit: int) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |
| limit | int | - | - |

**Returns**: `bool`



### RecentRequests(limit: int) → ([]RecentRequest, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| limit | int | - | - |

**Returns**: `([]RecentRequest, error)`


