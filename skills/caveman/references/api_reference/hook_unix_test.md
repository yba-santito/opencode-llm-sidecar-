# API Reference: hook_unix_test.go

**Language**: Go

**Source**: `proxy/internal/nativehook/hook_unix_test.go`

---

## Functions

### TestRunPreToolUsesNativeBridgeAndIncludesFileCurrentness(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRunInvalidRuntimeResponseFailsOpenAndRecordsBoundedFallback(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRepositoryStateChangesForExternalEditIndexAndWorktree(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### mustJSON(t: *testing.T, value: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| value | string | - | - |

**Returns**: (none)



### shortTempDir(t: *testing.T) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: `string`



### runGit(t: *testing.T, dir: string, args: ...string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| dir | string | - | - |
| args | ...string | - | - |

**Returns**: (none)


