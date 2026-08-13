# API Reference: quality.go

**Language**: Go

**Source**: `engine/evals/quality.go`

---

## Classes

### ModelUsage

**Inherits from**: (none)



### ModelRequest

**Inherits from**: (none)



### ModelResponse

**Inherits from**: (none)



### LocalGrader

**Inherits from**: (none)



### EchoModel

**Inherits from**: (none)



### QualityOptions

**Inherits from**: (none)



### QualityTask

**Inherits from**: (none)



### QualityReport

**Inherits from**: (none)



### QualitySummary

**Inherits from**: (none)



### AnswerKeyModel

**Inherits from**: (none)



## Functions

### runQuality(ctx: context.Context, opts: QualityOptions, f: Fixture, unknown: input, compressed: []byte, contentType: string, compressionRatio: float64, passedThrough: bool) → (QualityReport, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| opts | QualityOptions | - | - |
| f | Fixture | - | - |
| unknown | input | - | - |
| compressed | []byte | - | - |
| contentType | string | - | - |
| compressionRatio | float64 | - | - |
| passedThrough | bool | - | - |

**Returns**: `(QualityReport, error)`



### fillUsage(counter: tokens.Counter, prompt: []byte, resp: ModelResponse, requireRunnerUsage: bool) → (ModelUsage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| counter | tokens.Counter | - | - |
| prompt | []byte | - | - |
| resp | ModelResponse | - | - |
| requireRunnerUsage | bool | - | - |

**Returns**: `(ModelUsage, error)`



### gradeFailures(ctx: context.Context, runner: AnswerGrader, graders: []Grader, subject: Subject) → ([]string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| runner | AnswerGrader | - | - |
| graders | []Grader | - | - |
| subject | Subject | - | - |

**Returns**: `([]string, error)`



### qualityGraders(f: Fixture)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | Fixture | - | - |

**Returns**: (none)



### summarizeQuality(fixtures: []FixtureReport, opts: QualityOptions)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fixtures | []FixtureReport | - | - |
| opts | QualityOptions | - | - |

**Returns**: (none)



### qualityPrompt(question: string, context: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| question | string | - | - |
| context | []byte | - | - |

**Returns**: (none)



### expectedAnswer(graders: []Grader) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| graders | []Grader | - | - |

**Returns**: `string`


