# API Reference: server_windows.go

**Language**: Go

**Source**: `proxy/internal/nativeruntime/server_windows.go`

---

## Functions

### SocketPath(home: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |

**Returns**: `string`



### dialNativeRuntime(ctx: context.Context, home: string) → (net.Conn, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| home | string | - | - |

**Returns**: `(net.Conn, error)`



### Serve(ctx: context.Context, home: string, runtime: *Runtime) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| home | string | - | - |
| runtime | *Runtime | - | - |

**Returns**: `error`


