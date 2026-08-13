# API Reference: prefix_monitor_test.go

**Language**: Go

**Source**: `proxy/internal/gateway/prefix_monitor_test.go`

---

## Functions

### anthropicSessionBody(unknown: systemText, liveText: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | systemText | - | - |
| liveText | string | - | - |

**Returns**: `string`



### TestPrefixMonitorDetectsNonExtendingPrefix(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestProxyRecordsCacheBustOnNonExtendingPrefix(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### anthropicRawBody(systemText: string, messages: ...string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| systemText | string | - | - |
| messages | ...string | - | - |

**Returns**: `string`



### cachedUserMsg(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### liveUserMsg(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### assistantMsg(text: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `string`



### TestCacheEpochAllowsRunsGuardWithoutHeaders(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


