# API Reference: render_density_test.go

**Language**: Go

**Source**: `engine/pixel/render_density_test.go`

---

## Functions

### decodePNG(t: *testing.T, raw: []byte) → image

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| raw | []byte | - | - |

**Returns**: `image`



### TestCellAdvanceFourReferenceWidth(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPitchSixGeometry(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestZebraRowColors(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### firstInkColor(img: image.Image, unknown: y0, y1: int) → (color.RGBA, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| img | image.Image | - | - |
| unknown | y0 | - | - |
| y1 | int | - | - |

**Returns**: `(color.RGBA, bool)`


