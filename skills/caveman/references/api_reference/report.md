# API Reference: report.go

**Language**: Go

**Source**: `proxy/internal/store/report.go`

---

## Classes

### LearnSnapshot

**Inherits from**: (none)



## Functions

### DefaultReportPath(unknown: home, trialID: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | home | - | - |
| trialID | string | - | - |

**Returns**: `string`



### DefaultLearnReportPath(home: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |

**Returns**: `string`



### DefaultLearnJSONPath(home: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |

**Returns**: `string`



### WriteLearnSidecars(home: string, plan: LearnPlan, now: time.Time, generation: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |
| plan | LearnPlan | - | - |
| now | time.Time | - | - |
| generation | string | - | - |

**Returns**: `(string, error)`



### WriteLearnHTML(plan: LearnPlan, outPath: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plan | LearnPlan | - | - |
| outPath | string | - | - |

**Returns**: `error`



### WriteTrialHTML(plan: TrialPlan, outPath: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plan | TrialPlan | - | - |
| outPath | string | - | - |

**Returns**: `error`



### ExportTrial(plan: TrialPlan, outDir: string) → (map[string]string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plan | TrialPlan | - | - |
| outDir | string | - | - |

**Returns**: `(map[string]string, error)`



### writeExportSpans(f: *os.File, plan: TrialPlan) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | *os.File | - | - |
| plan | TrialPlan | - | - |

**Returns**: `error`


