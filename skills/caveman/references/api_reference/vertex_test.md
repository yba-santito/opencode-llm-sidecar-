# API Reference: vertex_test.go

**Language**: Go

**Source**: `proxy/providers/vertex/vertex_test.go`

---

## Functions

### newAdapter(t: *testing.T) → Adapter

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: `Adapter`



### predictPath(unknown: publisher, unknown: model, method: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | publisher | - | - |
| unknown | model | - | - |
| method | string | - | - |

**Returns**: `string`



### TestMatchRoute_VertexPredict(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### resolve(t: *testing.T, a: Adapter, path: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| a | Adapter | - | - |
| path | string | - | - |

**Returns**: `(string, error)`



### TestResolveUpstreamURL_StripsVertexPrefixAndKeepsQuery(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestResolveUpstreamURL_ClaudeRawPredict(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestResolveUpstreamURL_RejectsUnknownPublisher(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestResolveUpstreamURL_RejectsUnknownModel(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestResolveUpstreamURL_RejectsUnknownMethod(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestResolveUpstreamURL_RejectsMalformedPath(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParsePredictPath_VersionedModelWithAtDate(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestInspectRequest_ModelFromPathAndStream(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSanitizeAndMapHeaders_SetsBearerAndDropsInboundAuth(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestIsVertexHost(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


