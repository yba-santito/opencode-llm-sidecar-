# API Reference: session_cache_key_test.go

**Language**: Go

**Source**: `proxy/providers/openai/session_cache_key_test.go`

---

## Functions

### planSessionKey(t: *testing.T, unknown: body, session: string, payg: bool) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | body | - | - |
| session | string | - | - |
| payg | bool | - | - |

**Returns**: `([]byte, bool)`



### TestSessionCacheKeySetsAStableHashedKey(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSessionCacheKeyPreconditions(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSessionCacheKeyNeverOverwritesThePrefixOptimizer(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


