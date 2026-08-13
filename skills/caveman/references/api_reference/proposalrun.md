# API Reference: proposalrun.go

**Language**: Go

**Source**: `shared/platform/proposalrun/proposalrun.go`

---

## Classes

### Run

**Inherits from**: (none)



## Functions

### CanonicalDetail(detail: json.RawMessage) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| detail | json.RawMessage | - | - |

**Returns**: `([]byte, error)`



### MarshalJSON() → ([]byte, error)

**Returns**: `([]byte, error)`



### canonicalizeJSONValue(v: any) → (any, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `(any, error)`



### canonicalizeJSONNumber(number: json.Number) → (canonicalJSONNumber, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| number | json.Number | - | - |

**Returns**: `(canonicalJSONNumber, error)`



### normalizeJSONNumber(literal: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| literal | string | - | - |

**Returns**: `(string, error)`



### parseJSONExponent(raw: string) → (int, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | string | - | - |

**Returns**: `(int, error)`



### formatTime(t: time.Time) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | time.Time | - | - |

**Returns**: `string`



### RowHash(prevHash: string, seq: int64, action: string, detail: json.RawMessage, costUSD: float64, createdAt: time.Time) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| prevHash | string | - | - |
| seq | int64 | - | - |
| action | string | - | - |
| detail | json.RawMessage | - | - |
| costUSD | float64 | - | - |
| createdAt | time.Time | - | - |

**Returns**: `(string, error)`



### VerifyChain(runs: []Run) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| runs | []Run | - | - |

**Returns**: `error`


