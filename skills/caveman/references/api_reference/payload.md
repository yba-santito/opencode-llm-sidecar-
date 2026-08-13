# API Reference: payload.go

**Language**: Go

**Source**: `shared/platform/redact/payload.go`

---

## Classes

### Rule

**Inherits from**: (none)



### Finding

**Inherits from**: (none)



### RedactionReport

**Inherits from**: (none)



### compiledRule

**Inherits from**: (none)



## Functions

### mayMatch(lowered: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lowered | []byte | - | - |

**Returns**: `bool`



### asciiLower(b: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |

**Returns**: (none)



### asciiLowerInto(unknown: dst, b: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | dst | - | - |
| b | []byte | - | - |

**Returns**: (none)



### needles(lits: ...string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lits | ...string | - | - |

**Returns**: (none)



### apply(in: []byte) → ([]byte, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| in | []byte | - | - |

**Returns**: `([]byte, int)`



### placeholder(name: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |

**Returns**: (none)



### buildBuiltinPayloadRules()

**Returns**: (none)



### introducesNeedle(repl: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| repl | []byte | - | - |

**Returns**: `bool`



### Payload(body: []byte, rules: []Rule) → ([]byte, RedactionReport, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| rules | []Rule | - | - |

**Returns**: `([]byte, RedactionReport, error)`



### addFinding(findings: []Finding, unknown: name, origin: string, n: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| findings | []Finding | - | - |
| unknown | name | - | - |
| origin | string | - | - |
| n | int | - | - |

**Returns**: (none)



### compileOrgRules(in: []Rule) → ([]compiledRule, string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| in | []Rule | - | - |

**Returns**: `([]compiledRule, string, error)`



### luhnValid(b: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |

**Returns**: `bool`



### validSSN(b: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |

**Returns**: `bool`


