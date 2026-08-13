# API Reference: rewriter.go

**Language**: Go

**Source**: `rewriter/rewriter.go`

---

## Classes

### Client

**Inherits from**: (none)



### Config

**Inherits from**: (none)



### Request

**Inherits from**: (none)



### Result

**Inherits from**: (none)



## Functions

### New(cfg: Config) → (*Client, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | Config | - | - |

**Returns**: `(*Client, error)`



### Rewrite(ctx: context.Context, req: Request) → (Result, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| req | Request | - | - |

**Returns**: `(Result, error)`



### stripWrappingFence(text: string) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `(string, bool)`



### recoveryPointer(original: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| original | []byte | - | - |

**Returns**: `string`



### outputCeiling(originalTokens: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| originalTokens | int | - | - |

**Returns**: `int`


