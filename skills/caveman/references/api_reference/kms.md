# API Reference: kms.go

**Language**: Go

**Source**: `shared/platform/kms/kms.go`

---

## Classes

### Config

**Inherits from**: (none)



### Client

**Inherits from**: (none)



### Envelope

**Inherits from**: (none)



## Functions

### New(cfg: Config) → (*Client, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | Config | - | - |

**Returns**: `(*Client, error)`



### FromEnvironment() → (*Client, error)

**Returns**: `(*Client, error)`



### FromPayloadEnvironment() → (*Client, error)

**Returns**: `(*Client, error)`



### fromEnvironment(primaryKeyEnvironment: string, legacyKeyEnvironments: ...string) → (*Client, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| primaryKeyEnvironment | string | - | - |
| legacyKeyEnvironments | ...string | - | - |

**Returns**: `(*Client, error)`



### IsEnvelope(blob: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| blob | []byte | - | - |

**Returns**: `bool`



### Encrypt(ctx: context.Context, plaintext: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| plaintext | []byte | - | - |

**Returns**: `([]byte, error)`



### EncryptPayload(ctx: context.Context, plaintext: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| plaintext | []byte | - | - |

**Returns**: `([]byte, error)`



### Encrypt(ctx: context.Context, plaintext: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| plaintext | []byte | - | - |

**Returns**: `([]byte, error)`



### Decrypt(ctx: context.Context, blob: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| blob | []byte | - | - |

**Returns**: `([]byte, error)`



### DecryptPayload(ctx: context.Context, blob: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| blob | []byte | - | - |

**Returns**: `([]byte, error)`



### Decrypt(ctx: context.Context, blob: []byte) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| blob | []byte | - | - |

**Returns**: `([]byte, error)`



### ValidateProduction() → error

**Returns**: `error`



### ValidatePayloadProduction() → error

**Returns**: `error`



### ProbeProduction(ctx: context.Context) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |

**Returns**: `error`



### ProbePayloadProduction(ctx: context.Context) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |

**Returns**: `error`



### Probe(ctx: context.Context) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |

**Returns**: `error`



### validateLocation(unknown: region, keyID: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | region | - | - |
| keyID | string | - | - |

**Returns**: `error`



### call(ctx: context.Context, unknown: region, unknown: keyID, operation: string, unknown: input, output: any) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | region | - | - |
| unknown | keyID | - | - |
| operation | string | - | - |
| unknown | input | - | - |
| output | any | - | - |

**Returns**: `error`


