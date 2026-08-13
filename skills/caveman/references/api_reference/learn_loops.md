# API Reference: learn_loops.go

**Language**: Go

**Source**: `proxy/internal/store/learn_loops.go`

---

## Classes

### learnToolCall

**Inherits from**: (none)



### learningLoop

**Inherits from**: (none)



## Functions

### detectLearningLoops(calls: []learnToolCall, sessionRef: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| calls | []learnToolCall | - | - |
| sessionRef | string | - | - |

**Returns**: (none)



### canonicalToolSignature(unknown: name, input: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | name | - | - |
| input | string | - | - |

**Returns**: `string`



### claudeToolCalls(obj: map[string]any, pending: map[string]learnToolCall, position: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | map[string]any | - | - |
| pending | map[string]learnToolCall | - | - |
| position | int | - | - |

**Returns**: (none)



### toolInputSummary(value: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |

**Returns**: `string`



### toolResultText(value: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | any | - | - |

**Returns**: `string`



### learningLoopSinks(loops: []learningLoop)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| loops | []learningLoop | - | - |

**Returns**: (none)



### itoa(value: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | int | - | - |

**Returns**: `string`


