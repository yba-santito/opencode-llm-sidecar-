# API Reference: simulate.go

**Language**: Go

**Source**: `cacheengine/cachebench/simulate.go`

---

## Classes

### cachedPrefix

**Inherits from**: (none)



## Functions

### RunSimulated(ctx: context.Context, engine: *cacheengine.Engine, providers: []ProviderConfig, scenario: Scenario, target: Target) → (Report, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| engine | *cacheengine.Engine | - | - |
| providers | []ProviderConfig | - | - |
| scenario | Scenario | - | - |
| target | Target | - | - |

**Returns**: `(Report, error)`



### EvaluateTrace(ctx: context.Context, engine: *cacheengine.Engine, trace: Trace, target: Target) → (ProviderReport, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| engine | *cacheengine.Engine | - | - |
| trace | Trace | - | - |
| target | Target | - | - |

**Returns**: `(ProviderReport, error)`



### validateTrace(trace: Trace) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| trace | Trace | - | - |

**Returns**: `error`



### validPrefix(prefix: []PrefixSegment) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| prefix | []PrefixSegment | - | - |

**Returns**: `bool`



### evaluateSimulatedTrace(ctx: context.Context, engine: *cacheengine.Engine, trace: Trace, target: Target) → ProviderReport

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| engine | *cacheengine.Engine | - | - |
| trace | Trace | - | - |
| target | Target | - | - |

**Returns**: `ProviderReport`



### longestCommonPrefix(group: cachedPrefixGroup, prefix: []PrefixSegment, minimum: int, expire: bool, now: time.Time) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| group | cachedPrefixGroup | - | - |
| prefix | []PrefixSegment | - | - |
| minimum | int | - | - |
| expire | bool | - | - |
| now | time.Time | - | - |

**Returns**: `int`



### simulatedLookupPrefix(request: TraceRequest, result: cacheengine.NativeResult, prefix: []PrefixSegment)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | TraceRequest | - | - |
| result | cacheengine.NativeResult | - | - |
| prefix | []PrefixSegment | - | - |

**Returns**: (none)



### containsCacheBreakpoint(value: any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |

**Returns**: `bool`



### simulatedStateKey(trace: Trace, request: TraceRequest, result: cacheengine.NativeResult) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| trace | Trace | - | - |
| request | TraceRequest | - | - |
| result | cacheengine.NativeResult | - | - |

**Returns**: `string`



### prefixTokens(segments: []PrefixSegment) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| segments | []PrefixSegment | - | - |

**Returns**: `int`



### commonPrefixTokens(unknown: left, right: []PrefixSegment) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | left | - | - |
| right | []PrefixSegment | - | - |

**Returns**: `int`



### validateTarget(target: Target) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| target | Target | - | - |

**Returns**: `error`



### finalizeProvider(report: *ProviderReport, target: Target)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| report | *ProviderReport | - | - |
| target | Target | - | - |

**Returns**: (none)



### aggregateProviders(providers: []ProviderReport, target: Target) → ProviderReport

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| providers | []ProviderReport | - | - |
| target | Target | - | - |

**Returns**: `ProviderReport`



### baseReport(basis: string, scenario: Scenario, target: Target, qualityBasis: string) → Report

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| basis | string | - | - |
| scenario | Scenario | - | - |
| target | Target | - | - |
| qualityBasis | string | - | - |

**Returns**: `Report`


