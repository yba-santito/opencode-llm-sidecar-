# API Reference: main_integration_test.go

**Language**: Go

**Source**: `browse/cmd/caveman-browse/main_integration_test.go`

---

## Functions

### TestDirectCLIHelper(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestDirectCommandsPersistChromeAcrossProcesses(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestFailedFirstSnapshotClosesNewOwnedChrome(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCloseNeverShutsExternalCDPEndpoint(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### runDirectHelper(baseEnv: []string, args: []string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| baseEnv | []string | - | - |
| args | []string | - | - |

**Returns**: `(string, error)`



### firstLine(output: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| output | string | - | - |

**Returns**: (none)



### compactUID(unknown: snapshot, name: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | snapshot | - | - |
| name | string | - | - |

**Returns**: `string`



### freePort(t: *testing.T) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: `int`


