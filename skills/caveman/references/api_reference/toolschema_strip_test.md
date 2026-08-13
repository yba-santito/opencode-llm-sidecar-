# API Reference: toolschema_strip_test.go

**Language**: Go

**Source**: `proxy/internal/gateway/toolschema_strip_test.go`

---

## Classes

### toolSchemaStripCompressor

**Inherits from**: (none)



### noStripCompressor

**Inherits from**: (none)



## Functions

### toolCatalogRequest(live: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| live | string | - | - |

**Returns**: `string`



### strippedToolCatalog(t: *testing.T) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: `string`



### CompressSegment(seg: []byte) → ([]byte, int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| seg | []byte | - | - |

**Returns**: `([]byte, int, int)`



### StoreOriginal(body: []byte) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `(string, error)`



### StripToolSchema(tools: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tools | []byte | - | - |

**Returns**: `([]byte, bool)`



### CompressSegment(seg: []byte) → ([]byte, int, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| seg | []byte | - | - |

**Returns**: `([]byte, int, int)`



### StoreOriginal(body: []byte) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `(string, error)`



### newToolSchemaStripServer(t: *testing.T, comp: Compressor, rt: *captureTransport, cfg: Config) → (*Server, *captureSink)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| comp | Compressor | - | - |
| rt | *captureTransport | - | - |
| cfg | Config | - | - |

**Returns**: `(*Server, *captureSink)`



### TestToolSchemaStripIsOffByDefault(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaStripRemovesAnnotationsAndDisclosesRecovery(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaStripIsCacheStable(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaStripRecordModeIsPassThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaStripFailsClosed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaStripWithoutStripperCapabilityPassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaStripWithoutPrefixCachePassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


