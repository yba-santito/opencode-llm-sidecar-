# API Reference: learn.go

**Language**: Go

**Source**: `proxy/internal/store/learn.go`

---

## Classes

### behaviorScan

**Inherits from**: (none)



### behaviorDeadline

**Inherits from**: (none)



### result

**Inherits from**: (none)



### result

**Inherits from**: (none)



## Functions

### hashText(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### recordSession(source: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |

**Returns**: (none)



### medianContext() → int

**Returns**: `int`



### BuildLearnPlan(cwd: string, sources: []string, sinceExpr: string) → (LearnPlan, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cwd | string | - | - |
| sources | []string | - | - |
| sinceExpr | string | - | - |

**Returns**: `(LearnPlan, error)`



### BuildLearnPlanWithRetro(cwd: string, sources: []string, sinceExpr: string, retro: RetroOptions) → (LearnPlan, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cwd | string | - | - |
| sources | []string | - | - |
| sinceExpr | string | - | - |
| retro | RetroOptions | - | - |

**Returns**: `(LearnPlan, error)`



### LearnScan(sources: []string, sinceExpr: string) → (LearnPlan, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sources | []string | - | - |
| sinceExpr | string | - | - |

**Returns**: `(LearnPlan, error)`



### LearnScanWithRetro(sources: []string, sinceExpr: string, retro: RetroOptions) → (LearnPlan, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sources | []string | - | - |
| sinceExpr | string | - | - |
| retro | RetroOptions | - | - |

**Returns**: `(LearnPlan, error)`



### writeCavememLearnings(plan: LearnPlan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plan | LearnPlan | - | - |

**Returns**: (none)



### configSinks(cfg: configScan, turnsPerDay: float64)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | configScan | - | - |
| turnsPerDay | float64 | - | - |

**Returns**: (none)



### claudeMDSink(snap: *ConfigSnapshot, scope: string, turnsPerDay: float64)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| snap | *ConfigSnapshot | - | - |
| scope | string | - | - |
| turnsPerDay | float64 | - | - |

**Returns**: (none)



### dumbzoneSink(beh: behaviorScan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| beh | behaviorScan | - | - |

**Returns**: (none)



### deadLoadSkills(cfg: configScan, beh: behaviorScan) → (int, []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | configScan | - | - |
| beh | behaviorScan | - | - |

**Returns**: `(int, []string)`



### deadLoadSink(deadTokens: int, deadSkills: []string, beh: behaviorScan, turnsPerDay: float64)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| deadTokens | int | - | - |
| deadSkills | []string | - | - |
| beh | behaviorScan | - | - |
| turnsPerDay | float64 | - | - |

**Returns**: (none)



### subagentSink(beh: behaviorScan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| beh | behaviorScan | - | - |

**Returns**: (none)



### surfaceSink(cfg: configScan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | configScan | - | - |

**Returns**: (none)



### caveScore(cfg: configScan, beh: behaviorScan, unknown: deadTokens, recurPerTurn: int) → CaveScore

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | configScan | - | - |
| beh | behaviorScan | - | - |
| unknown | deadTokens | - | - |
| recurPerTurn | int | - | - |

**Returns**: `CaveScore`



### expired() → bool

**Returns**: `bool`



### scanBehavior(sourceSet: map[string]bool, since: time.Time, cfg: configScan) → (behaviorScan, recurringResult)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sourceSet | map[string]bool | - | - |
| since | time.Time | - | - |
| cfg | configScan | - | - |

**Returns**: `(behaviorScan, recurringResult)`



### scanBehaviorWithBudget(sourceSet: map[string]bool, since: time.Time, cfg: configScan, budget: time.Duration) → (behaviorScan, recurringResult, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sourceSet | map[string]bool | - | - |
| since | time.Time | - | - |
| cfg | configScan | - | - |
| budget | time.Duration | - | - |

**Returns**: `(behaviorScan, recurringResult, bool)`



### scanBehaviorUntil(sourceSet: map[string]bool, since: time.Time, cfg: configScan, deadline: *behaviorDeadline) → (behaviorScan, recurringResult, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sourceSet | map[string]bool | - | - |
| since | time.Time | - | - |
| cfg | configScan | - | - |
| deadline | *behaviorDeadline | - | - |

**Returns**: `(behaviorScan, recurringResult, bool)`



### scanClaudeSessionsUntil(root: string, since: time.Time, slugs: []string, beh: *behaviorScan, miner: *recurringMiner, deadline: *behaviorDeadline) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | string | - | - |
| since | time.Time | - | - |
| slugs | []string | - | - |
| beh | *behaviorScan | - | - |
| miner | *recurringMiner | - | - |
| deadline | *behaviorDeadline | - | - |

**Returns**: `bool`



### scanClaudeTranscriptBehavior(unknown: path, relPath: string, since: time.Time, slugs: []string, beh: *behaviorScan, miner: *recurringMiner)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | path | - | - |
| relPath | string | - | - |
| since | time.Time | - | - |
| slugs | []string | - | - |
| beh | *behaviorScan | - | - |
| miner | *recurringMiner | - | - |

**Returns**: (none)



### scanClaudeTranscriptBehaviorUntil(unknown: path, relPath: string, since: time.Time, slugs: []string, beh: *behaviorScan, miner: *recurringMiner, deadline: *behaviorDeadline) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | path | - | - |
| relPath | string | - | - |
| since | time.Time | - | - |
| slugs | []string | - | - |
| beh | *behaviorScan | - | - |
| miner | *recurringMiner | - | - |
| deadline | *behaviorDeadline | - | - |

**Returns**: `bool`



### claudeUsageMessageID(obj: map[string]any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |

**Returns**: `string`



### claudeTurnContext(obj: map[string]any) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |

**Returns**: `(int, bool)`



### claudeModel(obj: map[string]any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |

**Returns**: `string`



### scanCodexSessionsUntil(root: string, since: time.Time, beh: *behaviorScan, deadline: *behaviorDeadline) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | string | - | - |
| since | time.Time | - | - |
| beh | *behaviorScan | - | - |
| deadline | *behaviorDeadline | - | - |

**Returns**: `bool`



### scanCodexSessionBehavior(path: string, since: time.Time, beh: *behaviorScan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| since | time.Time | - | - |
| beh | *behaviorScan | - | - |

**Returns**: (none)



### scanCodexSessionBehaviorUntil(path: string, since: time.Time, beh: *behaviorScan, deadline: *behaviorDeadline) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| since | time.Time | - | - |
| beh | *behaviorScan | - | - |
| deadline | *behaviorDeadline | - | - |

**Returns**: `bool`



### parallelSessionScan(count: int, scan: func(int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| count | int | - | - |
| scan | func(int | - | - |

**Returns**: (none)



### mergeBehaviorScan(unknown: dst, src: *behaviorScan)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | dst | - | - |
| src | *behaviorScan | - | - |

**Returns**: (none)



### upsertSinks(sinks: []Sink) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sinks | []Sink | - | - |

**Returns**: `error`



### normalizeSources(sources: []string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sources | []string | - | - |

**Returns**: `map[string]`



### contextWindow(unknown: provider, model: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| model | string | - | - |

**Returns**: `int`



### windowDays(unknown: sinceExpr, unknown: from, to: string) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | sinceExpr | - | - |
| unknown | from | - | - |
| to | string | - | - |

**Returns**: `float64`



### rate(tokensPerTurn: int, turnsPerDay: float64) → int64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tokensPerTurn | int | - | - |
| turnsPerDay | float64 | - | - |

**Returns**: `int64`



### capped(v: float64, max: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | float64 | - | - |
| max | int | - | - |

**Returns**: `int`


