# API Reference: server_common.go

**Language**: Go

**Source**: `proxy/internal/nativeruntime/server_common.go`

---

## Functions

### Call(ctx: context.Context, home: string, request: Request) → (*Response, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| home | string | - | - |
| request | Request | - | - |

**Returns**: `(*Response, error)`



### validResponse(response: Response) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| response | Response | - | - |

**Returns**: `bool`



### serveConn(ctx: context.Context, conn: net.Conn, runtime: *Runtime)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| conn | net.Conn | - | - |
| runtime | *Runtime | - | - |

**Returns**: (none)


