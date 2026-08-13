# API Reference: bedrock_test.go

**Language**: Go

**Source**: `proxy/providers/bedrock/bedrock_test.go`

---

## Functions

### newAdapter(t: *testing.T) → Adapter

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: `Adapter`



### invokePath(unknown: model, action: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | model | - | - |
| action | string | - | - |

**Returns**: `string`



### TestMatchRoute_BedrockInvoke(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### resolve(t: *testing.T, a: Adapter, path: string, header: map[string]string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| a | Adapter | - | - |
| path | string | - | - |
| header | map[string]string | - | - |

**Returns**: `(string, error)`



### TestResolveUpstreamURL_StripsBedrockPrefix(t: *testing.T)

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



### TestResolveUpstreamURL_RejectsUnknownAction(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestResolveUpstreamURL_RejectsUnknownRegion(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestResolveUpstreamURL_RejectsRegionHostMismatch(t: *testing.T)

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



### TestResolveUpstreamURL_MantleIsOptInAndUsesOfficialHost(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestResolveUpstreamURL_RejectsConfiguredEndpointKindMismatch(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestBedrockHostAndRegionInventory(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestEndpointAndAPIKeyRegionInventoriesStayNarrowerThanRuntime(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestModelAllowlist_CurrentProfilesAndARNs(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestParseModelPath_VersionedModelWithColon(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestInspectRequest_ModelFromPath(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestInspectRequest_MantleModelFromBody(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestInspectRequest_MantleRejectsNonAnthropicMessageModel(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestInspectRequest_GuardrailChargeFailsPricingClosed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSanitizeAndMapHeaders_BuildsSigV4AndNeverLeaksSecret(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSanitizeAndMapHeaders_SignsBoundWirePayloadAndRuntimeMetadata(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSanitizeAndMapHeaders_IAMRejectsUnknownWirePayload(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSanitizeAndMapHeaders_BedrockAPIKeyUsesBearer(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSanitizeAndMapHeaders_MantleAuthShapes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSanitizeAndMapHeaders_FailsClosedWithoutCredentials(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


