# API Reference: catalog.go

**Language**: Go

**Source**: `shared/platform/catalog/catalog.go`

---

## Classes

### Entry

**Inherits from**: (none)



## Functions

### Price(unknown: provider, model: string) → (cost.Price, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| model | string | - | - |

**Returns**: `(cost.Price, string)`



### PriceForRegion(unknown: provider, unknown: model, region: string) → (cost.Price, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| unknown | model | - | - |
| region | string | - | - |

**Returns**: `(cost.Price, string)`



### priceAffecting(capability: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| capability | string | - | - |

**Returns**: `bool`



### priceAffectingBool(capabilities: map[string]any, capability: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| capabilities | map[string]any | - | - |
| capability | string | - | - |

**Returns**: `bool`



### PriceForRegionOrAgnostic(unknown: provider, unknown: model, region: string) → (cost.Price, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| unknown | model | - | - |
| region | string | - | - |

**Returns**: `(cost.Price, string)`



### PricingMultiplier(unknown: provider, unknown: model, unknown: region, capability: string) → (float64, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| unknown | model | - | - |
| unknown | region | - | - |
| capability | string | - | - |

**Returns**: `(float64, bool)`



### List()

**Returns**: (none)



### catalogVersion(verifiedAt: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| verifiedAt | string | - | - |

**Returns**: `string`



### load()

**Returns**: (none)



### DecodeAndValidate(raw: []byte) → ([]Entry, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |

**Returns**: `([]Entry, error)`



### catalogCandidates()

**Returns**: (none)


