# API Reference: golden_test.go

**Language**: Go

**Source**: `engine/pixel/golden_test.go`

---

## Classes

### goldenManifest

**Inherits from**: (none)



### goldenEntry

**Inherits from**: (none)



### goldenImage

**Inherits from**: (none)



## Functions

### TestGoldenFixtures(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### renderGoldenEntry(entry: goldenEntry) → ([]RenderedImage, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| entry | goldenEntry | - | - |

**Returns**: `([]RenderedImage, error)`



### intOption(opts: map[string]any, key: string, fallback: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | map[string]any | - | - |
| key | string | - | - |
| fallback | int | - | - |

**Returns**: `int`



### strOption(opts: map[string]any, key: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | map[string]any | - | - |
| key | string | - | - |

**Returns**: `string`



### boolOption(opts: map[string]any, key: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| opts | map[string]any | - | - |
| key | string | - | - |

**Returns**: `bool`



### compareDecodedPNG(t: *testing.T, unknown: gotPNG, wantPNG: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | gotPNG | - | - |
| wantPNG | []byte | - | - |

**Returns**: (none)



### rgba8(img: image.Image, unknown: x, y: int) → color

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| img | image.Image | - | - |
| unknown | x | - | - |
| y | int | - | - |

**Returns**: `color`


