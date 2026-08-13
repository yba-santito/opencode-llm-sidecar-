# API Reference: learn_retro.go

**Language**: Go

**Source**: `proxy/internal/store/learn_retro.go`

---

## Classes

### RetroOptions

**Inherits from**: (none)



### retroSessionPath

**Inherits from**: (none)



### retroTurn

**Inherits from**: (none)



### retroCandidate

**Inherits from**: (none)



### retroFileResult

**Inherits from**: (none)



### retroCollector

**Inherits from**: (none)



### retroStreamCandidate

**Inherits from**: (none)



### timedOccurrence

**Inherits from**: (none)



## Functions

### openRetroEngine() → (*engine.Engine, func()

**Returns**: `(*engine.Engine, func()`



### claim(sha: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sha | string | - | - |

**Returns**: `bool`



### measure(unknown: sha, text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | sha | - | - |
| text | string | - | - |

**Returns**: (none)



### expired() → bool

**Returns**: `bool`



### buildLearnRetro(sourceSet: map[string]bool, since: time.Time, sinceExpr: string, configPrefixPerTurn: int, opts: RetroOptions)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sourceSet | map[string]bool | - | - |
| since | time.Time | - | - |
| sinceExpr | string | - | - |
| configPrefixPerTurn | int | - | - |
| opts | RetroOptions | - | - |

**Returns**: (none)



### retroStreamFileKey(unknown: source, relPath: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | source | - | - |
| relPath | string | - | - |

**Returns**: `string`



### retroStreamCutTokens(r: *retroFileResult, savedBySha: map[string]int64, streamClaimed: map[string]bool, repeated: []retroStreamCandidate) → int64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | *retroFileResult | - | - |
| savedBySha | map[string]int64 | - | - |
| streamClaimed | map[string]bool | - | - |
| repeated | []retroStreamCandidate | - | - |

**Returns**: `int64`



### retroRepeatedBlockTokens(rec: recurringResult) → int64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rec | recurringResult | - | - |

**Returns**: `int64`



### retroRepeatedStreamCandidates(rec: recurringResult) → (map[string][]retroStreamCandidate, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rec | recurringResult | - | - |

**Returns**: `(map[string][]retroStreamCandidate, bool)`



### retroCaveats(retro: LearnRetro, sourceSet: map[string]bool, unusable: int, engineErr: string, undatedRepeated: bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| retro | LearnRetro | - | - |
| sourceSet | map[string]bool | - | - |
| unusable | int | - | - |
| engineErr | string | - | - |
| undatedRepeated | bool | - | - |

**Returns**: (none)



### retroSessionPaths(sourceSet: map[string]bool, since: time.Time)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sourceSet | map[string]bool | - | - |
| since | time.Time | - | - |

**Returns**: (none)



### retroSessionPathsUntil(sourceSet: map[string]bool, since: time.Time, expired: func() → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sourceSet | map[string]bool | - | - |
| since | time.Time | - | - |
| expired | func( | - | - |

**Returns**: `bool`



### retroScanClaudeFile(p: retroSessionPath, since: time.Time, col: *retroCollector) → retroFileResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | retroSessionPath | - | - |
| since | time.Time | - | - |
| col | *retroCollector | - | - |

**Returns**: `retroFileResult`



### claudeToolResultTexts(obj: map[string]any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |

**Returns**: (none)



### retroScanCodexFile(p: retroSessionPath, since: time.Time, col: *retroCollector) → retroFileResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | retroSessionPath | - | - |
| since | time.Time | - | - |
| col | *retroCollector | - | - |

**Returns**: `retroFileResult`


