# API Reference: image.go

**Language**: Go

**Source**: `engine/image/image.go`

---

## Classes

### Props

**Inherits from**: (none)



### Plan

**Inherits from**: (none)



## Functions

### Analyze(b: []byte) → (Props, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |

**Returns**: `(Props, bool)`



### Decide(p: Props, unknown: query, unknown: provider, model: string) → Plan

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | Props | - | - |
| unknown | query | - | - |
| unknown | provider | - | - |
| model | string | - | - |

**Returns**: `Plan`



### DecideWithDetail(p: Props, unknown: query, unknown: provider, unknown: model, beforeDetail: string) → Plan

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | Props | - | - |
| unknown | query | - | - |
| unknown | provider | - | - |
| unknown | model | - | - |
| beforeDetail | string | - | - |

**Returns**: `Plan`



### meaningfulTokenReduction(unknown: before, after: int) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | before | - | - |
| after | int | - | - |

**Returns**: `bool`



### Apply(orig: []byte, plan: Plan) → (out []byte, tokensBefore, tokensAfter int, ok bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| orig | []byte | - | - |
| plan | Plan | - | - |

**Returns**: `(out []byte, tokensBefore, tokensAfter int, ok bool)`



### scaleToLong(unknown: w, unknown: h, long: int) → (int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | w | - | - |
| unknown | h | - | - |
| long | int | - | - |

**Returns**: `(int, int)`



### downscale(src: image.Image, unknown: nw, nh: int) → image

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| src | image.Image | - | - |
| unknown | nw | - | - |
| nh | int | - | - |

**Returns**: `image`


