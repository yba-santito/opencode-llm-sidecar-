# API Reference: invariants.go

**Language**: Go

**Source**: `engine/compressors/invariants.go`

---

## Classes

### field

**Inherits from**: (none)



### entry

**Inherits from**: (none)



### agg

**Inherits from**: (none)



### bucket

**Inherits from**: (none)



## Functions

### summarizeElided(units: [][]field, elidedBytes: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| units | [][]field | - | - |
| elidedBytes | int | - | - |

**Returns**: `string`



### renderInvariants(entries: []entry, selected: []bool) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| entries | []entry | - | - |
| selected | []bool | - | - |

**Returns**: `string`



### enumerateField(name: string, counts: map[string]int, valueOrder: []string, tooWide: bool, absent: int) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |
| counts | map[string]int | - | - |
| valueOrder | []string | - | - |
| tooWide | bool | - | - |
| absent | int | - | - |

**Returns**: `(string, bool)`



### summaryBudget(elidedBytes: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| elidedBytes | int | - | - |

**Returns**: `int`



### worthEliding(unknown: unitCount, unknown: markerBytes, elidedBytes: int, summary: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | unitCount | - | - |
| unknown | markerBytes | - | - |
| elidedBytes | int | - | - |
| summary | string | - | - |

**Returns**: `bool`



### invariantEnumValueUsable(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### invariantValueUsable(value: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `bool`



### lineFields(line: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | []byte | - | - |

**Returns**: (none)



### logfmtFields(line: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | []byte | - | - |

**Returns**: (none)



### rowFields(unknown: header, row: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | header | - | - |
| row | []string | - | - |

**Returns**: (none)



### objectFields(v: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |

**Returns**: (none)



### wantsElisionNote(elidedBytes: int) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| elidedBytes | int | - | - |

**Returns**: `bool`



### elisionNote(unit: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unit | string | - | - |

**Returns**: `string`



### coverageEntry(name: string, values: map[string]struct{}, absent: int, unknown: minValue, maxValue: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |
| values | map[string]struct{} | - | - |
| absent | int | - | - |
| unknown | minValue | - | - |
| maxValue | string | - | - |

**Returns**: `string`



### denseCoverage(values: map[string]struct{}) → (string, string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | map[string]struct{} | - | - |

**Returns**: `(string, string, bool)`



### splitTrailingDigits(value: string) → (string, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `(string, string)`


