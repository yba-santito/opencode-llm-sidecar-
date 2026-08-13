# API Reference: retrieve_tool.go

**Language**: Go

**Source**: `proxy/internal/gateway/retrieve_tool.go`

---

## Classes

### retrieveTool

**Inherits from**: (none)



### gatewayJSONSpan

**Inherits from**: (none)



### prependReadCloser

**Inherits from**: (none)



## Functions

### serverRetrieveSupported(unknown: provider, routePath: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| routePath | string | - | - |

**Returns**: `bool`



### injectRetrieveTool(unknown: provider, routePath: string, body: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| routePath | string | - | - |
| body | []byte | - | - |

**Returns**: `([]byte, bool)`



### hasRetrieveTool(body: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `bool`



### gatewayRootObjectSpan(body: []byte) → (gatewayJSONSpan, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `(gatewayJSONSpan, bool)`



### gatewayObjectEmpty(body: []byte, obj: gatewayJSONSpan) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| obj | gatewayJSONSpan | - | - |

**Returns**: `bool`



### gatewayFindObjectField(body: []byte, obj: gatewayJSONSpan, field: string) → (gatewayJSONSpan, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| obj | gatewayJSONSpan | - | - |
| field | string | - | - |

**Returns**: `(gatewayJSONSpan, bool)`



### gatewayArrayElements(body: []byte, arr: gatewayJSONSpan) → ([]gatewayJSONSpan, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| arr | gatewayJSONSpan | - | - |

**Returns**: `([]gatewayJSONSpan, bool)`



### gatewayScanJSONValue(body: []byte, start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| start | int | - | - |

**Returns**: `(int, bool)`



### gatewayScanJSONString(body: []byte, start: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| start | int | - | - |

**Returns**: `(int, bool)`



### gatewaySkipJSONSpace(body: []byte, i: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| i | int | - | - |

**Returns**: `int`



### providerToolSchema(unknown: provider, routePath: string, tool: retrieveTool) → any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| routePath | string | - | - |
| tool | retrieveTool | - | - |

**Returns**: `any`



### providerUsesResponsesTools(unknown: provider, routePath: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| routePath | string | - | - |

**Returns**: `bool`



### providerUsesGeminiTools(unknown: provider, routePath: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| routePath | string | - | - |

**Returns**: `bool`



### providerUsesOpenAITools(provider: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |

**Returns**: `bool`



### toolNameInList(tools: []any, name: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tools | []any | - | - |
| name | string | - | - |

**Returns**: `bool`



### parseRetrieveCall(unknown: provider, routePath: string, respBody: []byte) → (callID, handle, query string, ok bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| routePath | string | - | - |
| respBody | []byte | - | - |

**Returns**: `(callID, handle, query string, ok bool)`



### retrieveArgs(argBytes: []byte) → (handle, query string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| argBytes | []byte | - | - |

**Returns**: `(handle, query string)`



### appendRetrieveResult(unknown: provider, routePath: string, unknown: reqBody, respBody: []byte, unknown: callID, recovered: string) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| routePath | string | - | - |
| unknown | reqBody | - | - |
| respBody | []byte | - | - |
| unknown | callID | - | - |
| recovered | string | - | - |

**Returns**: `([]byte, bool)`



### addUsage(unknown: a, b: providers.UsageObservation) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | a | - | - |
| b | providers.UsageObservation | - | - |

**Returns**: `providers`



### checkedUsageAdd(unknown: a, b: int) → (int, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | a | - | - |
| b | int | - | - |

**Returns**: `(int, bool)`



### aggregateCacheStatus(usage: providers.UsageObservation) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| usage | providers.UsageObservation | - | - |

**Returns**: `string`



### mergeUsageQualifier(current: *string, unknown: next, reason: string, unsupported: *string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| current | *string | - | - |
| unknown | next | - | - |
| reason | string | - | - |
| unsupported | *string | - | - |

**Returns**: (none)



### bufferedBody(resp: *http.Response, body: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| resp | *http.Response | - | - |
| body | []byte | - | - |

**Returns**: (none)



### stripRetrieveCall(unknown: provider, routePath: string, respBody: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| routePath | string | - | - |
| respBody | []byte | - | - |

**Returns**: `([]byte, bool)`



### forwardCleaned(unknown: provider, routePath: string, cur: *http.Response, respBody: []byte, requestID: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| routePath | string | - | - |
| cur | *http.Response | - | - |
| respBody | []byte | - | - |
| requestID | string | - | - |

**Returns**: (none)



### retrieveFailureResponse(unknown: kind, message: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | kind | - | - |
| message | string | - | - |

**Returns**: (none)



### retrieveResponseTooLarge()

**Returns**: (none)



### retrieveResponseReadFailed()

**Returns**: (none)



### maxRetrieveResponseBytes() → int64

**Returns**: `int64`



### readRetrieveResponseBody(resp: *http.Response) → ([]byte, bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| resp | *http.Response | - | - |

**Returns**: `([]byte, bool, error)`



### allowedRetrieveHandles(handles: []string) → map[string]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| handles | []string | - | - |

**Returns**: `map[string]`



### replayOriginalResponse(ctx: context.Context, upstream: *http.Client, reqURL: *url.URL, headers: http.Header, originalBody: []byte, oversized: *http.Response) → (*http.Response, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| upstream | *http.Client | - | - |
| reqURL | *url.URL | - | - |
| headers | http.Header | - | - |
| originalBody | []byte | - | - |
| oversized | *http.Response | - | - |

**Returns**: `(*http.Response, bool)`



### runRetrieveLoop(ctx: context.Context, upstream: *http.Client, reqURL: *url.URL, headers: http.Header, unknown: reqBody, originalBody: []byte, handles: []string, resp: *http.Response, adapter: providers.Adapter, unknown: provider, unknown: routePath, requestID: string) → (*http.Response, []providers.UsageObservation, bool, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| upstream | *http.Client | - | - |
| reqURL | *url.URL | - | - |
| headers | http.Header | - | - |
| unknown | reqBody | - | - |
| originalBody | []byte | - | - |
| handles | []string | - | - |
| resp | *http.Response | - | - |
| adapter | providers.Adapter | - | - |
| unknown | provider | - | - |
| unknown | routePath | - | - |
| requestID | string | - | - |

**Returns**: `(*http.Response, []providers.UsageObservation, bool, bool)`


