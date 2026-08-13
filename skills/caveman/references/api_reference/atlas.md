# API Reference: atlas.go

**Language**: Go

**Source**: `engine/pixel/atlas.go`

---

## Functions

### loadAtlas()

**Returns**: (none)



### checkAtlasLengths(name: string, unknown: cps, offsets: []uint32, wide: []uint8)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |
| unknown | cps | - | - |
| offsets | []uint32 | - | - |
| wide | []uint8 | - | - |

**Returns**: (none)



### decodeBytesGzip(name: string, src: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |
| src | []byte | - | - |

**Returns**: (none)



### decodeU32Gzip(name: string, src: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |
| src | []byte | - | - |

**Returns**: (none)



### AtlasRank(cp: rune) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cp | rune | - | - |

**Returns**: `int`



### AtlasGrayRank(cp: rune) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cp | rune | - | - |

**Returns**: `int`



### atlasBit(unknown: rank, unknown: row, col: int) → uint8

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | rank | - | - |
| unknown | row | - | - |
| col | int | - | - |

**Returns**: `uint8`



### atlasGrayByte(unknown: rank, unknown: row, col: int) → uint8

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | rank | - | - |
| unknown | row | - | - |
| col | int | - | - |

**Returns**: `uint8`


