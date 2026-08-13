# API Reference: main.go

**Language**: Go

**Source**: `shrink/cmd/caveman-shrink/main.go`

---

## Functions

### main()

**Returns**: (none)



### runShrink()

**Returns**: (none)



### readBoundedInput(r: io.Reader, maxBytes: int64) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | io.Reader | - | - |
| maxBytes | int64 | - | - |

**Returns**: `([]byte, error)`



### runLint(args: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | []string | - | - |

**Returns**: (none)



### runRecover(args: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | []string | - | - |

**Returns**: (none)



### fatal(format: string, args: ...any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| format | string | - | - |
| args | ...any | - | - |

**Returns**: (none)


