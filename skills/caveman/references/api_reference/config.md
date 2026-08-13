# API Reference: config.go

**Language**: Go

**Source**: `proxy/internal/config/config.go`

---

## Classes

### Config

**Inherits from**: (none)



### ProviderConfig

**Inherits from**: (none)



### CompatConfig

**Inherits from**: (none)



## Functions

### Load(path: string) → (Config, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `(Config, error)`



### validateListen(listen: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| listen | string | - | - |

**Returns**: `error`



### withDefaults() → Config

**Returns**: `Config`



### BaseURL(unknown: provider, fallback: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| fallback | string | - | - |

**Returns**: `string`



### BillingTiers() → map[string]

**Returns**: `map[string]`



### BedrockRegion() → string

**Returns**: `string`



### BedrockBaseURL() → string

**Returns**: `string`



### validateCompat() → error

**Returns**: `error`



### Credential(provider: string) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |

**Returns**: `providers`



### CompatCredential(name: string) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |

**Returns**: `(string, bool)`


