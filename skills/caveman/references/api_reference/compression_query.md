# API Reference: compression_query.go

**Language**: Go

**Source**: `proxy/internal/gateway/compression_query.go`

---

## Functions

### extractCompressionQuery(unknown: provider, endpoint: string, body: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| endpoint | string | - | - |
| body | []byte | - | - |

**Returns**: `string`



### latestOpenAIResponsesQuery(input: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | any | - | - |

**Returns**: `string`



### latestMessageQuery(raw: any, allowedBlockTypes: map[string]bool) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | any | - | - |
| allowedBlockTypes | map[string]bool | - | - |

**Returns**: `string`



### compressionText(raw: any, allowedBlockTypes: map[string]bool) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | any | - | - |
| allowedBlockTypes | map[string]bool | - | - |

**Returns**: `string`



### latestGeminiQuery(raw: any) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | any | - | - |

**Returns**: `string`



### normalizeCompressionQuery(query: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| query | string | - | - |

**Returns**: `string`


