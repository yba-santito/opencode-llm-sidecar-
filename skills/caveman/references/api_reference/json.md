# API Reference: json.go

**Language**: Go

**Source**: `engine/compressors/json.go`

---

## Classes

### jsonCompressor

**Inherits from**: (none)



### cand

**Inherits from**: (none)



### seg

**Inherits from**: (none)



## Functions

### NewJSON() → Compressor

**Returns**: `Compressor`



### ContentType() → string

**Returns**: `string`



### SafetyClass() → safety

**Returns**: `safety`



### Compress(input: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `([]byte, bool)`



### CompressQuery(input: []byte, query: string) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |
| query | string | - | - |

**Returns**: `([]byte, bool)`



### CompressWithMetadata(input: []byte, query: string) → ([]byte, Metadata, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |
| query | string | - | - |

**Returns**: `([]byte, Metadata, bool)`



### compress(input: []byte, query: string) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |
| query | string | - | - |

**Returns**: `([]byte, bool)`



### transform(v: any, preserve: bool, query: string, collapsed: *bool) → any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |
| preserve | bool | - | - |
| query | string | - | - |
| collapsed | *bool | - | - |

**Returns**: `any`



### selectArray(arr: []any, query: string, collapsed: *bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| arr | []any | - | - |
| query | string | - | - |
| collapsed | *bool | - | - |

**Returns**: (none)



### summarizeElementRun(run: []any, docs: []string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| run | []any | - | - |
| docs | []string | - | - |

**Returns**: `string`



### changePointBudget(maxItems: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| maxItems | int | - | - |

**Returns**: `int`



### numericLeaves(v: any, prefix: string, out: map[string]float64)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |
| prefix | string | - | - |
| out | map[string]float64 | - | - |

**Returns**: (none)



### anomalyIndices(arr: []any, docs: []string, zThresh: float64) → map[int]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| arr | []any | - | - |
| docs | []string | - | - |
| zThresh | float64 | - | - |

**Returns**: `map[int]`



### medianAndScale(xs: []float64) → (med, scale float64)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| xs | []float64 | - | - |

**Returns**: `(med, scale float64)`



### medianSorted(sorted: []float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sorted | []float64 | - | - |

**Returns**: `float64`



### primarySeries(arr: []any, docs: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| arr | []any | - | - |
| docs | []string | - | - |

**Returns**: (none)



### variance(xs: []float64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| xs | []float64 | - | - |

**Returns**: `float64`



### changePointSeams(y: []float64, zThresh: float64, maxSplits: int) → map[int]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| y | []float64 | - | - |
| zThresh | float64 | - | - |
| maxSplits | int | - | - |

**Returns**: `map[int]`



### containsElidedMarker(arr: []any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| arr | []any | - | - |

**Returns**: `bool`



### nearConstantSlope(y: []float64) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| y | []float64 | - | - |

**Returns**: `bool`



### bestSplit(y: []float64, unknown: a, b: int, zThresh: float64) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| y | []float64 | - | - |
| unknown | a | - | - |
| b | int | - | - |
| zThresh | float64 | - | - |

**Returns**: `(int, bool)`



### segMean(y: []float64, unknown: a, b: int) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| y | []float64 | - | - |
| unknown | a | - | - |
| b | int | - | - |

**Returns**: `float64`


