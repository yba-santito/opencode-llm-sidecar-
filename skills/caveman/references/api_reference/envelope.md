# API Reference: envelope.go

**Language**: Go

**Source**: `shared/platform/envelope/envelope.go`

---

## Classes

### Scope

**Inherits from**: (none)



### Metadata

**Inherits from**: (none)



## Functions

### Seal(plaintext: []byte) → (ciphertext []byte, metaJSON []byte, err error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plaintext | []byte | - | - |

**Returns**: `(ciphertext []byte, metaJSON []byte, err error)`



### SealForScope(plaintext: []byte, scope: Scope) → (ciphertext []byte, metaJSON []byte, err error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plaintext | []byte | - | - |
| scope | Scope | - | - |

**Returns**: `(ciphertext []byte, metaJSON []byte, err error)`



### seal(plaintext: []byte, scheme: string, aad: []byte, scopeHash: string) → (ciphertext []byte, metaJSON []byte, err error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| plaintext | []byte | - | - |
| scheme | string | - | - |
| aad | []byte | - | - |
| scopeHash | string | - | - |

**Returns**: `(ciphertext []byte, metaJSON []byte, err error)`



### Open(ciphertext: []byte, metaJSON: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ciphertext | []byte | - | - |
| metaJSON | []byte | - | - |

**Returns**: `([]byte, error)`



### OpenForScope(ciphertext: []byte, metaJSON: []byte, scope: Scope) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ciphertext | []byte | - | - |
| metaJSON | []byte | - | - |
| scope | Scope | - | - |

**Returns**: `([]byte, error)`



### open(ciphertext: []byte, meta: Metadata, aad: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ciphertext | []byte | - | - |
| meta | Metadata | - | - |
| aad | []byte | - | - |

**Returns**: `([]byte, error)`



### scopeAAD(scope: Scope) → ([]byte, string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| scope | Scope | - | - |

**Returns**: `([]byte, string, error)`


