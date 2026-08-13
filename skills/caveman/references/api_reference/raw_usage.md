# API Reference: raw_usage.go

**Language**: Go

**Source**: `cacheengine/raw_usage.go`

---

## Classes

### ProviderUsageEvidence

**Inherits from**: (none)



## Functions

### ExtractProviderUsage(provider: string, response: []byte) → (ProviderUsageEvidence, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| response | []byte | - | - |

**Returns**: `(ProviderUsageEvidence, bool)`



### rawCounter(root: map[string]json.RawMessage, name: string) → (int, bool, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]json.RawMessage | - | - |
| name | string | - | - |

**Returns**: `(int, bool, bool)`



### safeCounterSum(values: ...int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | ...int | - | - |

**Returns**: `(int, bool)`



### ObserveRawCacheUsage(result: NativeResult, provider: string, raw: []byte) → Observation

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| result | NativeResult | - | - |
| provider | string | - | - |
| raw | []byte | - | - |

**Returns**: `Observation`



### NormalizeRawCacheUsage(provider: string, raw: []byte) → (UsageObservation, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| raw | []byte | - | - |

**Returns**: `(UsageObservation, bool)`



### optionalObjectField(root: map[string]any, name: string) → (map[string]any, bool, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]any | - | - |
| name | string | - | - |

**Returns**: `(map[string]any, bool, bool)`



### optionalCounter(root: map[string]any, name: string) → (value int, observed, valid bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | map[string]any | - | - |
| name | string | - | - |

**Returns**: `(value int, observed, valid bool)`


