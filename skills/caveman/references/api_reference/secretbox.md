# API Reference: secretbox.go

**Language**: Go

**Source**: `shared/platform/secretbox/secretbox.go`

---

## Functions

### loadKey() → ([]byte, error)

**Returns**: `([]byte, error)`



### Encrypt(plaintext: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plaintext | []byte | - | - |

**Returns**: `([]byte, error)`



### EncryptPayloadKey(plaintext: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plaintext | []byte | - | - |

**Returns**: `([]byte, error)`



### Decrypt(envelope: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| envelope | []byte | - | - |

**Returns**: `([]byte, error)`



### DecryptPayloadKey(envelope: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| envelope | []byte | - | - |

**Returns**: `([]byte, error)`



### useKMS() → bool

**Returns**: `bool`



### ResolveEnvironmentSecret(unknown: plaintextEnv, ciphertextEnv: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | plaintextEnv | - | - |
| ciphertextEnv | string | - | - |

**Returns**: `(string, error)`


