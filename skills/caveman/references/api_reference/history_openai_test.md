# API Reference: history_openai_test.go

**Language**: Go

**Source**: `engine/pixel/history_openai_test.go`

---

## Functions

### TestOpenAIHistoryTurnLowering(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPlanGptCollapseGatesAndClosedBoundaries(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPlanGptCollapseTokenFloorAndAppendOnlyImages(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestPlanGptCollapsePinsLatestUserRequest(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestTransformOpenAIHistoryCollapseResponsesAndChat(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### openAIPlainTurns(unknown: n, chars: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | n | - | - |
| chars | int | - | - |

**Returns**: (none)



### openAITurnsWithUser(n: int, userIndices: map[int]bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | int | - | - |
| userIndices | map[int]bool | - | - |

**Returns**: (none)



### buildOpenAIResponsesInput(turns: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| turns | int | - | - |

**Returns**: (none)



### buildOpenAIChatMessages(turns: int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| turns | int | - | - |

**Returns**: (none)



### reflectStringSlices(unknown: a, b: []string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | a | - | - |
| b | []string | - | - |

**Returns**: `bool`



### unmarshalJSONTest(t: *testing.T, b: []byte) → any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| b | []byte | - | - |

**Returns**: `any`


