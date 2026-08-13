# API Reference: overlay.go

**Language**: Go

**Source**: `engine/pixel/overlay.go`

---

## Functions

### compositeTwoLayers(unknown: cov1, cov2: []uint8, unknown: c1, c2: [3]uint8)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | cov1 | - | - |
| cov2 | []uint8 | - | - |
| unknown | c1 | - | - |
| c2 | [3]uint8 | - | - |

**Returns**: (none)



### blitLayerCoverage(cov: []uint8, unknown: fbW, unknown: fbH, unknown: x, y: int, cp: rune) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cov | []uint8 | - | - |
| unknown | fbW | - | - |
| unknown | fbH | - | - |
| unknown | x | - | - |
| y | int | - | - |
| cp | rune | - | - |

**Returns**: `int`



### renderLayerCoverage(lines: []string, unknown: width, unknown: height, unknown: cols, unknown: cellW, pitch: int) → ([]uint8, int, map[rune]int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lines | []string | - | - |
| unknown | width | - | - |
| unknown | height | - | - |
| unknown | cols | - | - |
| unknown | cellW | - | - |
| pitch | int | - | - |

**Returns**: `([]uint8, int, map[rune]int)`



### renderTwoLayerChunk(unknown: redLines, blueLines: []string, cols: int, style: RenderStyle, maxHeightPx: int) → (RenderedImage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | redLines | - | - |
| blueLines | []string | - | - |
| cols | int | - | - |
| style | RenderStyle | - | - |
| maxHeightPx | int | - | - |

**Returns**: `(RenderedImage, error)`



### RenderTextToTwoLayerPNGs(text: string, unknown: cols, maxCharsPerImage: int, style: RenderStyle, maxHeightPx: int) → ([]RenderedImage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| unknown | cols | - | - |
| maxCharsPerImage | int | - | - |
| style | RenderStyle | - | - |
| maxHeightPx | int | - | - |

**Returns**: `([]RenderedImage, error)`


