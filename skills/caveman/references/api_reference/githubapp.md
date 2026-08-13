# API Reference: githubapp.go

**Language**: Go

**Source**: `shared/platform/githubapp/githubapp.go`

---

## Classes

### Config

**Inherits from**: (none)



### App

**Inherits from**: (none)



### InstallationToken

**Inherits from**: (none)



### Installation

**Inherits from**: (none)



### Repo

**Inherits from**: (none)



## Functions

### New(cfg: Config) → (*App, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | Config | - | - |

**Returns**: `(*App, error)`



### Slug() → string

**Returns**: `string`



### WebhookSecret() → string

**Returns**: `string`



### AppJWT() → (string, error)

**Returns**: `(string, error)`



### GetInstallation(ctx: context.Context, installationID: int64) → (Installation, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| installationID | int64 | - | - |

**Returns**: `(Installation, error)`



### MintInstallationToken(ctx: context.Context, installationID: int64, repos: []string, perms: map[string]string) → (InstallationToken, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| installationID | int64 | - | - |
| repos | []string | - | - |
| perms | map[string]string | - | - |

**Returns**: `(InstallationToken, error)`



### RevokeToken(ctx: context.Context, token: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| token | string | - | - |

**Returns**: `error`



### GetRepo(ctx: context.Context, unknown: token, unknown: owner, name: string) → (Repo, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | token | - | - |
| unknown | owner | - | - |
| name | string | - | - |

**Returns**: `(Repo, error)`



### GetRepoInstallation(ctx: context.Context, unknown: owner, name: string) → (Installation, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | owner | - | - |
| name | string | - | - |

**Returns**: `(Installation, error)`



### GetFileContent(ctx: context.Context, unknown: token, unknown: owner, unknown: name, unknown: path, ref: string) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | token | - | - |
| unknown | owner | - | - |
| unknown | name | - | - |
| unknown | path | - | - |
| ref | string | - | - |

**Returns**: `([]byte, error)`



### DoToken(ctx: context.Context, unknown: token, unknown: method, path: string, body: any) → (int, []byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | token | - | - |
| unknown | method | - | - |
| path | string | - | - |
| body | any | - | - |

**Returns**: `(int, []byte, error)`



### do(ctx: context.Context, unknown: authorization, unknown: method, path: string, body: any) → (int, []byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | authorization | - | - |
| unknown | method | - | - |
| path | string | - | - |
| body | any | - | - |

**Returns**: `(int, []byte, error)`



### parseRSAPrivateKey(pemBytes: []byte) → (*rsa.PrivateKey, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pemBytes | []byte | - | - |

**Returns**: `(*rsa.PrivateKey, error)`



### snippet(b: []byte) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |

**Returns**: `string`


