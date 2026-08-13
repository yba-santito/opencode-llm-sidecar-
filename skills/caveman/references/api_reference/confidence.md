# API Reference: confidence.go

**Language**: Go

**Source**: `proxy/routing/confidence.go`

---

## Functions

### ConfidenceScore(answer: string, f: Features) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| answer | string | - | - |
| f | Features | - | - |

**Returns**: `float64`



### ShouldEscalate(unknown: score, tau: float64) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | score | - | - |
| tau | float64 | - | - |

**Returns**: `bool`



### countNonSpace(s: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `int`



### endsWithTerminalPunct(s: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `bool`


