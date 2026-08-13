# API Reference: profiles.go

**Language**: Go

**Source**: `cacheengine/profiles.go`

---

## Functions

### defaultProfile(request: NativeRequest) → (Profile, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | NativeRequest | - | - |

**Returns**: `(Profile, bool)`



### catalogCacheCapability(unknown: provider, unknown: model, capability: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| unknown | model | - | - |
| capability | string | - | - |

**Returns**: `bool`



### bedrockCachePointEligibleModel(model: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `bool`



### bedrockCachePointEndpointEligible(unknown: model, endpoint: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | model | - | - |
| endpoint | string | - | - |

**Returns**: `bool`



### stripBedrockInferenceScope(model: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `string`



### cacheMultipliers(request: NativeRequest, unknown: fallbackWrite, fallbackRead: float64) → (float64, float64)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | NativeRequest | - | - |
| unknown | fallbackWrite | - | - |
| fallbackRead | float64 | - | - |

**Returns**: `(float64, float64)`



### openAIExplicitModel(model: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `bool`



### anthropicMinimum(model: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `int`



### bedrockMinimum(model: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `int`



### geminiMinimum(model: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `int`


