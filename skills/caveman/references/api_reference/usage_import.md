# API Reference: usage_import.go

**Language**: Go

**Source**: `proxy/internal/store/usage_import.go`

---

## Classes

### ImportSummary

**Inherits from**: (none)



## Functions

### ImportCodex(unknown: root, sinceExpr: string) → (ImportSummary, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | root | - | - |
| sinceExpr | string | - | - |

**Returns**: `(ImportSummary, error)`



### ImportClaude(unknown: root, sinceExpr: string) → (ImportSummary, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | root | - | - |
| sinceExpr | string | - | - |

**Returns**: `(ImportSummary, error)`



### aggregateImportBasis(events: []UsageEvent) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| events | []UsageEvent | - | - |

**Returns**: `string`



### RefreshClaudeUsageFromEnv() → (ImportSummary, error)

**Returns**: `(ImportSummary, error)`



### fetchClaudeUsageJSON() → ([]byte, error)

**Returns**: `([]byte, error)`



### codexPaths(root: string) → ([]string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | string | - | - |

**Returns**: `([]string, error)`



### codexPathsUntil(root: string, expired: func() → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | string | - | - |
| expired | func( | - | - |

**Returns**: `bool`



### claudePaths(root: string) → ([]string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | string | - | - |

**Returns**: `([]string, error)`



### parseCodexFile(path: string, since: time.Time) → ([]UsageEvent, []QuotaEvent, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| since | time.Time | - | - |

**Returns**: `([]UsageEvent, []QuotaEvent, error)`



### parseClaudeFile(path: string, since: time.Time) → ([]UsageEvent, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| since | time.Time | - | - |

**Returns**: `([]UsageEvent, error)`



### parseClaudeTranscript(path: string, since: time.Time) → ([]UsageEvent, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| since | time.Time | - | - |

**Returns**: `([]UsageEvent, error)`



### claudeUsageEvent(obj: map[string]any, path: string, lineNo: int, raw: []byte, ts: time.Time) → (UsageEvent, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |
| path | string | - | - |
| lineNo | int | - | - |
| raw | []byte | - | - |
| ts | time.Time | - | - |

**Returns**: `(UsageEvent, bool)`



### parseClaudeTask(path: string, since: time.Time) → ([]UsageEvent, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| since | time.Time | - | - |

**Returns**: `([]UsageEvent, error)`



### quotaEventsFromAny(unknown: provider, unknown: sourceKind, unknown: basis, observedAt: string, v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| unknown | sourceKind | - | - |
| unknown | basis | - | - |
| observedAt | string | - | - |
| v | any | - | - |

**Returns**: (none)



### parseSince(expr: string) → time

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| expr | string | - | - |

**Returns**: `time`



### timestampFromObject(obj: map[string]any) → time

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |

**Returns**: `time`



### tsOrNow(t: time.Time) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | time.Time | - | - |

**Returns**: `string`



### eventID(path: string, line: int, raw: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| line | int | - | - |
| raw | []byte | - | - |

**Returns**: `string`



### contentEventID(raw: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |

**Returns**: `string`



### asMap(v: any) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `map[string]`



### firstString(values: ...any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | ...any | - | - |

**Returns**: `string`



### int64FromAny(v: any) → int64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `int64`



### float64FromAny(v: any) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `float64`



### importedUsageCost(provider: string, price: cost.Price, unknown: input, unknown: output, unknown: cached, unknown: cacheCreate, reasoning: int64) → float64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| price | cost.Price | - | - |
| unknown | input | - | - |
| unknown | output | - | - |
| unknown | cached | - | - |
| unknown | cacheCreate | - | - |
| reasoning | int64 | - | - |

**Returns**: `float64`



### anyPositiveInt64(values: ...int64) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | ...int64 | - | - |

**Returns**: `bool`



### checkedNonNegativeSum(values: ...int64) → (int64, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | ...int64 | - | - |

**Returns**: `(int64, bool)`



### roughJSONSize(v: any) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `int`



### compactMeta(v: map[string]any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | map[string]any | - | - |

**Returns**: `string`



### safeWindow(s: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `string`



### uniqStrings(in: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| in | []string | - | - |

**Returns**: (none)


