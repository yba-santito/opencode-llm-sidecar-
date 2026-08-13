# API Reference: toolschema_strip.go

**Language**: Go

**Source**: `proxy/internal/gateway/toolschema_strip.go`

---

## Functions

### toolSchemaStripAllowed(adapter: providers.Adapter, sessionID: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |
| sessionID | string | - | - |

**Returns**: `bool`



### toolSchemaCacheScope() → string

**Returns**: `string`



### stripToolSchema(body: []byte, meta: providers.RequestMetadata, requestID: string) → ([]byte, string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| meta | providers.RequestMetadata | - | - |
| requestID | string | - | - |

**Returns**: `([]byte, string, bool)`


