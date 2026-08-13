# API Reference: retrieve_integration_test.go

**Language**: Go

**Source**: `mcp/retrieve_integration_test.go`

---

## Functions

### corpusPage(t: *testing.T, name: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| name | string | - | - |

**Returns**: (none)



### liveEngine(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### callRetrieveTool(t: *testing.T, tools: []Tool, unknown: handle, query: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| tools | []Tool | - | - |
| unknown | handle | - | - |
| query | string | - | - |

**Returns**: `string`



### assertNoPointers(t: *testing.T, unknown: what, content: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | what | - | - |
| content | string | - | - |

**Returns**: (none)



### excerpt(content: string, at: int) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | string | - | - |
| at | int | - | - |

**Returns**: `string`



### TestRetrieveReturnsRawRowsForInventoryCatalog(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRetrieveReturnsRawRowsForWebhookEvents(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRetrieveReturnsRawRowsForStockCSV(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestQueryFilteredRetrieveReturnsRawRecords(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRetrieveHandleFormsAllResolve(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAntiStormPayoutIsTheRawOriginal(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRetrieveResolvesNativeRuntimeObjectPointers(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


