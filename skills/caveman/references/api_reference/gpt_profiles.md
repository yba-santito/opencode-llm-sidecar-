# API Reference: gpt_profiles.go

**Language**: Go

**Source**: `engine/pixel/gpt_profiles.go`

---

## Classes

### GptVisionCost

**Inherits from**: (none)



### GptProfile

**Inherits from**: (none)



### gptProfileEnvPartial

**Inherits from**: (none)



## Functions

### ResolveGptProfile(model: string) → GptProfile

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `GptProfile`



### resolveBuiltinGptProfile(m: string) → GptProfile

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| m | string | - | - |

**Returns**: `GptProfile`



### gptEnvProfiles() → map[string]

**Returns**: `map[string]`



### parseGptEnvProfiles(raw: string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | string | - | - |

**Returns**: `map[string]`



### validGptVisionCost(v: GptVisionCost) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | GptVisionCost | - | - |

**Returns**: `bool`



### finiteFloat(v: float64) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | float64 | - | - |

**Returns**: `bool`



### safeIntFloat(v: float64) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | float64 | - | - |

**Returns**: `bool`



### validPositiveIntFloat(v: float64) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | float64 | - | - |

**Returns**: `bool`



### OpenAIVisionTokens(model: string, unknown: w, h: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |
| unknown | w | - | - |
| h | int | - | - |

**Returns**: `int`


