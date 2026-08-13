# API Reference: subscription_live_zone_test.go

**Language**: Go

**Source**: `proxy/internal/gateway/subscription_live_zone_test.go`

---

## Functions

### newSubscriptionCompressServer(comp: Compressor, rt: *captureTransport, cfg: Config) → (*Server, *captureSink)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| comp | Compressor | - | - |
| rt | *captureTransport | - | - |
| cfg | Config | - | - |

**Returns**: `(*Server, *captureSink)`



### subBlock(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### subCachedBlock(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### claudeCodeConversation(liveText: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| liveText | string | - | - |

**Returns**: `string`



### TestSubscriptionLiveZoneNeedsNoAccount(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSubscriptionLiveZoneUnknownOffSwitchFailsClosed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSubscriptionWithoutMCPRecoveryPassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSubscriptionWithoutPrefixCachePassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSubscriptionCompressesLiveZoneByDefault(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestOAuthLiveZoneCompressesAcrossPrefixStableAdapters(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSubscriptionOffSwitchPassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSubscriptionLiveZoneKeepsCacheBreakpointPrefixByteEqual(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSubscriptionLiveZoneClampCompressesNewestMarkedTurn(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSubscriptionLiveZoneDeterministicDoubleRun(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSubscriptionLiveZoneUncompressibleBodyPassesThrough(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSubscriptionLiveZoneRecordsTokensNeverDollars(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


