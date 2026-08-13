# API Reference: marker.go

**Language**: Go

**Source**: `proxy/internal/nativeruntime/marker.go`

---

## Functions

### LoadOrCreateSessionKey(home: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| home | string | - | - |

**Returns**: `([]byte, error)`



### SessionMarker(key: []byte, sessionID: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| key | []byte | - | - |
| sessionID | string | - | - |

**Returns**: `(string, error)`



### StripSessionMarkers(unknown: body, key: []byte) → (stripped []byte, sessionID string, changed bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | body | - | - |
| key | []byte | - | - |

**Returns**: `(stripped []byte, sessionID string, changed bool)`



### markerMAC(key: []byte, encodedSessionID: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| key | []byte | - | - |
| encodedSessionID | string | - | - |

**Returns**: `string`


