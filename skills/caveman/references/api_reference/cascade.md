# API Reference: cascade.go

**Language**: Go

**Source**: `proxy/routing/cascade.go`

---

## Classes

### CascadeRouter

**Inherits from**: (none)



## Functions

### Pick(f: Features, pool: []Candidate, alpha: float64) → (Decision, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | Features | - | - |
| pool | []Candidate | - | - |
| alpha | float64 | - | - |

**Returns**: `(Decision, error)`



### NextRung(ranked: []Candidate, current: string) → (Candidate, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ranked | []Candidate | - | - |
| current | string | - | - |

**Returns**: `(Candidate, bool)`



### NextActionRung(ranked: []Candidate, actionID: string) → (Candidate, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ranked | []Candidate | - | - |
| actionID | string | - | - |

**Returns**: `(Candidate, bool)`



### rungIndex(ranked: []Candidate, current: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ranked | []Candidate | - | - |
| current | string | - | - |

**Returns**: `int`


