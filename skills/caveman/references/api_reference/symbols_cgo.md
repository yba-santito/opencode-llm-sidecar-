# API Reference: symbols_cgo.go

**Language**: Go

**Source**: `proxy/internal/repointel/symbols_cgo.go`

---

## Functions

### symbolParserBasis() → string

**Returns**: `string`



### scanSymbols(ctx: context.Context, _: string, language: string, raw: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| _ | string | - | - |
| language | string | - | - |
| raw | []byte | - | - |

**Returns**: (none)



### symbolLanguage(language: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| language | string | - | - |

**Returns**: (none)



### collectSymbols(node: *sitter.Node, raw: []byte, out: *[]Symbol)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| node | *sitter.Node | - | - |
| raw | []byte | - | - |
| out | *[]Symbol | - | - |

**Returns**: (none)



### firstIdentifier(node: *sitter.Node)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| node | *sitter.Node | - | - |

**Returns**: (none)


