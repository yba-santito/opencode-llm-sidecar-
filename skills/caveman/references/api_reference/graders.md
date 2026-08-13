# API Reference: graders.go

**Language**: Go

**Source**: `engine/evals/graders.go`

---

## Classes

### Subject

**Inherits from**: (none)



### Grader

**Inherits from**: (none)



### Verdict

**Inherits from**: (none)



## Functions

### pass(reason: string) → Verdict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reason | string | - | - |

**Returns**: `Verdict`



### fail(reason: string) → Verdict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reason | string | - | - |

**Returns**: `Verdict`



### Grade(g: Grader, s: Subject) → Verdict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| g | Grader | - | - |
| s | Subject | - | - |

**Returns**: `Verdict`



### gradeTOONRoundTrip(s: Subject) → Verdict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | Subject | - | - |

**Returns**: `Verdict`



### graderStringList(v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: (none)



### graderString(g: Grader) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| g | Grader | - | - |

**Returns**: `string`



### graderSchema(g: Grader) → (map[string]any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| g | Grader | - | - |

**Returns**: `(map[string]any, bool)`



### mapAny(v: any) → (map[string]any, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `(map[string]any, bool)`



### validateJSONSchema(v: any, schema: map[string]any, path: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |
| schema | map[string]any | - | - |
| path | string | - | - |

**Returns**: `string`



### schemaTypeSet(v: any) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `map[string]`



### valueMatchesAnyType(v: any, types: map[string]bool) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |
| types | map[string]bool | - | - |

**Returns**: `bool`



### number(v: any) → (float64, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: `(float64, bool)`



### graderReferenceStringList(v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: (none)



### extractToolSequence(raw: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |

**Returns**: (none)



### toolNamesFromValue(v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: (none)



### splitToolNames(s: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: (none)


