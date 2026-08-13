# API Reference: render.go

**Language**: Go

**Source**: `engine/pixel/render.go`

---

## Classes

### RenderStyle

**Inherits from**: (none)



### DensePagesOptions

**Inherits from**: (none)



## Functions

### cellsFor(cp: rune, markerScale: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cp | rune | - | - |
| markerScale | int | - | - |

**Returns**: `int`



### jsLen(s: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `int`



### runeLen(s: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `int`



### MinifyForRender(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### Reflow(text: string) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `(string, bool)`



### Dereflow(s: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `string`



### NeutralizeSentinel(s: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `string`



### ExpandTabsInLine(line: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | string | - | - |

**Returns**: `string`



### MeasureLineCols(line: string, markerScale: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | string | - | - |
| markerScale | int | - | - |

**Returns**: `int`



### MeasureContentCols(text: string, unknown: maxCols, markerScale: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| unknown | maxCols | - | - |
| markerScale | int | - | - |

**Returns**: `int`



### WrapLines(text: string, unknown: cols, markerScale: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| unknown | cols | - | - |
| markerScale | int | - | - |

**Returns**: (none)



### SlotCopyBody(body: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | string | - | - |

**Returns**: `string`



### RoleSlotSegment(unknown: tag, unknown: body, mark: string, attr: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | tag | - | - |
| unknown | body | - | - |
| mark | string | - | - |
| attr | string | - | - |

**Returns**: `string`



### splitWrappedLinesIntoReadablePages(lines: []string, unknown: maxLines, maxChars: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lines | []string | - | - |
| unknown | maxLines | - | - |
| maxChars | int | - | - |

**Returns**: (none)



### readableLinesPerColumn(cols: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cols | int | - | - |

**Returns**: `int`



### blitGlyph(fb: []uint8, unknown: fbW, unknown: x, y: int, cp: rune, markerMask: []uint8) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fb | []uint8 | - | - |
| unknown | fbW | - | - |
| unknown | x | - | - |
| y | int | - | - |
| cp | rune | - | - |
| markerMask | []uint8 | - | - |

**Returns**: `int`



### blitGlyphGray(fb: []uint8, unknown: fbW, unknown: x, y: int, cp: rune) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fb | []uint8 | - | - |
| unknown | fbW | - | - |
| unknown | x | - | - |
| y | int | - | - |
| cp | rune | - | - |

**Returns**: `int`



### blitGlyphScaled(unknown: fb, markerMask: []uint8, unknown: fbW, unknown: fbH, unknown: x, y: int, cp: rune, scaleX: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | fb | - | - |
| markerMask | []uint8 | - | - |
| unknown | fbW | - | - |
| unknown | fbH | - | - |
| unknown | x | - | - |
| y | int | - | - |
| cp | rune | - | - |
| scaleX | int | - | - |

**Returns**: `int`



### drawGrid(fb: []uint8, unknown: fbW, unknown: fbH, unknown: rows, unknown: gridCols, unknown: cellH, unknown: cellW, glyphH: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fb | []uint8 | - | - |
| unknown | fbW | - | - |
| unknown | fbH | - | - |
| unknown | rows | - | - |
| unknown | gridCols | - | - |
| unknown | cellH | - | - |
| unknown | cellW | - | - |
| glyphH | int | - | - |

**Returns**: (none)



### slotForMark(r: rune) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | rune | - | - |

**Returns**: `int`



### RenderChunkToPNG(text: string, cols: int, style: RenderStyle, maxHeightPx: int, slotText: string) → (RenderedImage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| cols | int | - | - |
| style | RenderStyle | - | - |
| maxHeightPx | int | - | - |
| slotText | string | - | - |

**Returns**: `(RenderedImage, error)`



### paintColorMask(unknown: colorMask, fb: []uint8, unknown: width, unknown: height, unknown: baseX, unknown: baseY, unknown: w, unknown: h, slot: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | colorMask | - | - |
| fb | []uint8 | - | - |
| unknown | width | - | - |
| unknown | height | - | - |
| unknown | baseX | - | - |
| unknown | baseY | - | - |
| unknown | w | - | - |
| unknown | h | - | - |
| slot | int | - | - |

**Returns**: (none)



### renderColorMaskRGB(unknown: fb, colorMask: []uint8, palette: [][3]uint8)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | fb | - | - |
| colorMask | []uint8 | - | - |
| palette | [][3]uint8 | - | - |

**Returns**: (none)



### RenderTextToPNGs(text: string, cols: int, style: RenderStyle) → ([]RenderedImage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| cols | int | - | - |
| style | RenderStyle | - | - |

**Returns**: `([]RenderedImage, error)`



### RenderTextToPNGsWithCharLimit(text: string, unknown: cols, maxCharsPerImage: int, style: RenderStyle, maxHeightPx: int, slotText: string) → ([]RenderedImage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| unknown | cols | - | - |
| maxCharsPerImage | int | - | - |
| style | RenderStyle | - | - |
| maxHeightPx | int | - | - |
| slotText | string | - | - |

**Returns**: `([]RenderedImage, error)`



### MultiColWidth(unknown: cols, numCols: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | cols | - | - |
| numCols | int | - | - |

**Returns**: `int`



### MaxFittingCols(cols: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cols | int | - | - |

**Returns**: `int`



### renderMultiColChunkFromLines(lines: []string, unknown: cols, unknown: numCols, unknown: charsCovered, linesPerCol: int) → (RenderedImage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lines | []string | - | - |
| unknown | cols | - | - |
| unknown | numCols | - | - |
| unknown | charsCovered | - | - |
| linesPerCol | int | - | - |

**Returns**: `(RenderedImage, error)`



### RenderTextToPNGsMultiCol(text: string, unknown: cols, numCols: int) → ([]RenderedImage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| unknown | cols | - | - |
| numCols | int | - | - |

**Returns**: `([]RenderedImage, error)`



### RenderDensePages(text: string, opts: DensePagesOptions) → ([]RenderedImage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |
| opts | DensePagesOptions | - | - |

**Returns**: `([]RenderedImage, error)`


