# API Reference: gate.go

**Language**: Go

**Source**: `rewriter/gate.go`

---

## Functions

### Accept(unknown: original, rewritten: []byte, theta: int) → (bool, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | original | - | - |
| rewritten | []byte | - | - |
| theta | int | - | - |

**Returns**: `(bool, string)`



### accept(unknown: original, rewritten: []byte, theta: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | original | - | - |
| rewritten | []byte | - | - |
| theta | int | - | - |

**Returns**: `string`



### survivesVerbatim(unknown: text, phrase: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | text | - | - |
| phrase | string | - | - |

**Returns**: `bool`



### survivesFold(unknown: text, phrase: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | text | - | - |
| phrase | string | - | - |

**Returns**: `bool`



### failureCounts(text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: (none)



### nonZeroExitStatuses(text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: (none)



### sourceLocations(text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: (none)



### failureReferences(text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: (none)



### failureDetails(text: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: (none)



### failureDetailSurvives(rewrittenFailures: []string, original: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rewrittenFailures | []string | - | - |
| original | string | - | - |

**Returns**: `bool`



### isFailureLine(line: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | string | - | - |

**Returns**: `bool`



### distinct(in: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| in | []string | - | - |

**Returns**: (none)


