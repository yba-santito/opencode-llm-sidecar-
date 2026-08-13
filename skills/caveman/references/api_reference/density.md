# API Reference: density.go

**Language**: Go

**Source**: `engine/pixel/density.go`

---

## Classes

### renderParams

**Inherits from**: (none)



### DensityDraw

**Inherits from**: (none)



## Functions

### DensityFromEnv() → DensityLevel

**Returns**: `DensityLevel`



### normalizeLevel(l: DensityLevel) → DensityLevel

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| l | DensityLevel | - | - |

**Returns**: `DensityLevel`



### ResolveDensity(model: string, level: DensityLevel) → renderParams

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |
| level | DensityLevel | - | - |

**Returns**: `renderParams`



### levelParams(level: DensityLevel, tier: PixelTier) → renderParams

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| level | DensityLevel | - | - |
| tier | PixelTier | - | - |

**Returns**: `renderParams`



### applyDensityFloors(rp: renderParams) → renderParams

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rp | renderParams | - | - |

**Returns**: `renderParams`



### isHiResModel(model: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `bool`



### isGpt56(model: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |

**Returns**: `bool`



### canvas() → (widthPx, heightPx int)

**Returns**: `(widthPx, heightPx int)`



### linesPerPage(canvasHeightPx: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| canvasHeightPx | int | - | - |

**Returns**: `int`



### pageHeightPx(lines: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lines | int | - | - |

**Returns**: `int`



### colsPerPage(canvasWidthPx: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| canvasWidthPx | int | - | - |

**Returns**: `int`



### pageWidthPx(cols: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cols | int | - | - |

**Returns**: `int`



### charsPerPage(unknown: canvasWidthPx, canvasHeightPx: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | canvasWidthPx | - | - |
| canvasHeightPx | int | - | - |

**Returns**: `int`



### pageCols() → int

**Returns**: `int`



### pageRows() → int

**Returns**: `int`



### layers() → int

**Returns**: `int`



### imageRowGeometry(unknown: cols, unknown: numCols, maxCharsPerImage: int) → (rowsPerLayer, n, layers int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | cols | - | - |
| unknown | numCols | - | - |
| maxCharsPerImage | int | - | - |

**Returns**: `(rowsPerLayer, n, layers int)`



### imageLineCapacity(unknown: cols, unknown: numCols, maxCharsPerImage: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | cols | - | - |
| unknown | numCols | - | - |
| maxCharsPerImage | int | - | - |

**Returns**: `int`



### charBudget() → int

**Returns**: `int`



### renderStyle() → RenderStyle

**Returns**: `RenderStyle`



### isConservativeGeometry() → bool

**Returns**: `bool`



### drawFromParams(rp: renderParams) → DensityDraw

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rp | renderParams | - | - |

**Returns**: `DensityDraw`



### StdDensityDraw(level: DensityLevel) → DensityDraw

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| level | DensityLevel | - | - |

**Returns**: `DensityDraw`



### ResolveDensityDraw(model: string, level: DensityLevel) → DensityDraw

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |
| level | DensityLevel | - | - |

**Returns**: `DensityDraw`



### DensityInkNote(zebra: bool, layers: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| zebra | bool | - | - |
| layers | int | - | - |

**Returns**: `string`


