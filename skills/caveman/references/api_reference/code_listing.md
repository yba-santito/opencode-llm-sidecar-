# API Reference: code_listing.go

**Language**: Go

**Source**: `engine/compressors/code_listing.go`

---

## Functions

### SplitLineNumberedListing(input: []byte) → (source []byte, numbers []int, ok bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | []byte | - | - |

**Returns**: `(source []byte, numbers []int, ok bool)`



### splitLineNumberGutter(line: []byte) → (number int, rest []byte, ok bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | []byte | - | - |

**Returns**: `(number int, rest []byte, ok bool)`



### RestoreLineNumberedListing(unknown: compressed, source: []byte, numbers: []int) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | compressed | - | - |
| source | []byte | - | - |
| numbers | []int | - | - |

**Returns**: `([]byte, bool)`



### indexSourceLines(lines: [][]byte) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lines | [][]byte | - | - |

**Returns**: `map[string]`



### nextMatch(index: map[string][]int, line: string, cursor: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| index | map[string][]int | - | - |
| line | string | - | - |
| cursor | int | - | - |

**Returns**: `(int, bool)`


