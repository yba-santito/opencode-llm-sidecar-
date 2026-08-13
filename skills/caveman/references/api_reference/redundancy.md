# API Reference: redundancy.go

**Language**: Go

**Source**: `engine/compressors/redundancy.go`

---

## Classes

### profile

**Inherits from**: (none)



## Functions

### keepNonRedundant(units: [][]byte, keep: []bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| units | [][]byte | - | - |
| keep | []bool | - | - |

**Returns**: (none)



### docsAsUnits(docs: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| docs | []string | - | - |

**Returns**: (none)



### representedBy(dropped: profile, classes: []profile) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| dropped | profile | - | - |
| classes | []profile | - | - |

**Returns**: `bool`



### unitVocabulary(unit: []byte) → profile

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unit | []byte | - | - |

**Returns**: `profile`



### tokenize(unit: []byte, maskDigits: bool) → (map[string]struct{}, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unit | []byte | - | - |
| maskDigits | bool | - | - |

**Returns**: `(map[string]struct{}, int)`


