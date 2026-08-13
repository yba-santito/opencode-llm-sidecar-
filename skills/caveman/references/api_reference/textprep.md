# API Reference: textprep.go

**Language**: Go

**Source**: `engine/pixel/textprep.go`

---

## Functions

### CountVisualRows(text: string, cols: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| cols | int | - | - |

**Returns**: `int`



### EstimateImageCount(text: string, unknown: cols, unknown: numCols, maxCharsPerImage: int, rp: renderParams) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| unknown | cols | - | - |
| unknown | numCols | - | - |
| maxCharsPerImage | int | - | - |
| rp | renderParams | - | - |

**Returns**: `int`



### ClassifyContent(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### TruncateForBudget(text: string, unknown: maxImages, unknown: cols, unknown: numCols, maxCharsPerImage: int, rp: renderParams) → (out string, omittedChars int, truncated bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| unknown | maxImages | - | - |
| unknown | cols | - | - |
| unknown | numCols | - | - |
| maxCharsPerImage | int | - | - |
| rp | renderParams | - | - |

**Returns**: `(out string, omittedChars int, truncated bool)`



### lineRows(line: string, cols: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | string | - | - |
| cols | int | - | - |

**Returns**: `int`



### buildPagingMarker(unknown: originalChars, unknown: originalLines, unknown: originalEstImages, unknown: shownHeadLines, unknown: shownTailLines, unknown: omittedLines, omittedChars: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | originalChars | - | - |
| unknown | originalLines | - | - |
| unknown | originalEstImages | - | - |
| unknown | shownHeadLines | - | - |
| unknown | shownTailLines | - | - |
| unknown | omittedLines | - | - |
| omittedChars | int | - | - |

**Returns**: `string`



### commaInt(n: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |

**Returns**: `string`



### CompactSlabWhitespace(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`


