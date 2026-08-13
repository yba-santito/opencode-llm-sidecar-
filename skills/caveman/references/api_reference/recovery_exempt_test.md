# API Reference: recovery_exempt_test.go

**Language**: Go

**Source**: `proxy/providers/openai/recovery_exempt_test.go`

---

## Functions

### rewritable(t: *testing.T, body: []byte, endpoint: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| body | []byte | - | - |
| endpoint | string | - | - |

**Returns**: (none)



### blockContains(blocks: []providers.RewritableBlock, want: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| blocks | []providers.RewritableBlock | - | - |
| want | string | - | - |

**Returns**: `bool`



### TestChatRecoveryToolResultIsNotRewritable(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestChatOrdinaryToolResultStaysRewritable(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestResponsesRecoveryOutputIsNotRewritable(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestResponsesOrdinaryOutputStaysRewritable(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


