# API Reference: live_zone_test.go

**Language**: Go

**Source**: `proxy/internal/gateway/live_zone_test.go`

---

## Classes

### captureTransport

**Inherits from**: (none)



### liveZoneCompressor

**Inherits from**: (none)



## Functions

### RoundTrip(r: *http.Request) → (*http.Response, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | *http.Request | - | - |

**Returns**: `(*http.Response, error)`



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



### RetrieveOriginal(unknown: handle, query: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | handle | - | - |
| query | string | - | - |

**Returns**: `([]byte, error)`



### newSocketFreeCompressServer(adapter: providers.Adapter, comp: Compressor, rt: *captureTransport, creds: CredentialResolver)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |
| comp | Compressor | - | - |
| rt | *captureTransport | - | - |
| creds | CredentialResolver | - | - |

**Returns**: (none)



### newSocketFreeCompressServerWithConfig(adapter: providers.Adapter, comp: Compressor, rt: *captureTransport, creds: CredentialResolver, cfg: Config)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| adapter | providers.Adapter | - | - |
| comp | Compressor | - | - |
| rt | *captureTransport | - | - |
| creds | CredentialResolver | - | - |
| cfg | Config | - | - |

**Returns**: (none)



### serveBody(t: *testing.T, srv: *Server, unknown: path, body: string, headers: map[string]string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| srv | *Server | - | - |
| unknown | path | - | - |
| body | string | - | - |
| headers | map[string]string | - | - |

**Returns**: (none)



### TestLiveZoneDeterminismAndMarkerContentAddressing(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestLiveZoneTokenAwarePerBlockRevert(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSubscriptionDefaultPassesThroughWithoutMutation(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSubscriptionLiveZoneOptInCompressesWithoutToolInjectionOrHeaderMutation(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestThreeTurnLiveZoneKeepsFrozenPrefixAndStaticTools(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### assertFrozenPrefixByteEqual(t: *testing.T, unknown: clientBody, unknown: upstreamBody, liveMarker: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | clientBody | - | - |
| unknown | upstreamBody | - | - |
| liveMarker | string | - | - |

**Returns**: (none)



### contentHandle(original: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| original | []byte | - | - |

**Returns**: `string`



### extractToolsSuffix(t: *testing.T, body: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | string | - | - |

**Returns**: `string`



### assertContainsInOrder(t: *testing.T, body: string, parts: []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | string | - | - |
| parts | []string | - | - |

**Returns**: (none)


