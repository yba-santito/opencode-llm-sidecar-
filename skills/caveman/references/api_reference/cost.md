# API Reference: cost.go

**Language**: Go

**Source**: `shared/platform/cost/cost.go`

---

## Classes

### Price

**Inherits from**: (none)



### Usage

**Inherits from**: (none)



## Functions

### EstimateUSD(price: Price, usage: Usage) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| price | Price | - | - |
| usage | Usage | - | - |

**Returns**: `float64`



### RoundUSD(value: float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | float64 | - | - |

**Returns**: `float64`



### ForInputTokens(price: Price, totalInputTokens: int) → Price

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| price | Price | - | - |
| totalInputTokens | int | - | - |

**Returns**: `Price`



### ValidPrice(price: Price) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| price | Price | - | - |

**Returns**: `bool`



### tokenCost(tokens: int, rate: float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tokens | int | - | - |
| rate | float64 | - | - |

**Returns**: `float64`



### safeRateProduct(unknown: rate, multiplier: float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | rate | - | - |
| multiplier | float64 | - | - |

**Returns**: `float64`



### positiveFiniteOrOne(v: float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | float64 | - | - |

**Returns**: `float64`



### positiveFinite(v: float64) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | float64 | - | - |

**Returns**: `bool`



### finiteNonNegative(v: float64) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | float64 | - | - |

**Returns**: `bool`


