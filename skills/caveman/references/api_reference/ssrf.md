# API Reference: ssrf.go

**Language**: Go

**Source**: `shared/platform/ssrf/ssrf.go`

---

## Classes

### Config

**Inherits from**: (none)



## Functions

### ManagedConfig() → Config

**Returns**: `Config`



### SelfHostedConfig(allowList: ...string) → Config

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| allowList | ...string | - | - |

**Returns**: `Config`



### ValidateURL(ctx: context.Context, raw: string, cfg: Config) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| raw | string | - | - |
| cfg | Config | - | - |

**Returns**: `error`



### ValidateHost(ctx: context.Context, host: string, cfg: Config) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| host | string | - | - |
| cfg | Config | - | - |

**Returns**: `error`



### validateHostPort(ctx: context.Context, unknown: host, port: string, cfg: Config) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| unknown | host | - | - |
| port | string | - | - |
| cfg | Config | - | - |

**Returns**: `error`



### validateHostInput(host: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| host | string | - | - |

**Returns**: `error`



### checkAddr(addr: netip.Addr, unknown: host, port: string, cfg: Config) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| addr | netip.Addr | - | - |
| unknown | host | - | - |
| port | string | - | - |
| cfg | Config | - | - |

**Returns**: `error`



### inRFC1918(addr: netip.Addr) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| addr | netip.Addr | - | - |

**Returns**: `bool`



### isInAllowList(unknown: host, port: string, list: []string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | host | - | - |
| port | string | - | - |
| list | []string | - | - |

**Returns**: `bool`



### DialContext(cfg: Config) → func

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | Config | - | - |

**Returns**: `func`



### dialContextWith(cfg: Config, lookup: lookupNetIPFunc, dial: rawDialContextFunc) → func

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | Config | - | - |
| lookup | lookupNetIPFunc | - | - |
| dial | rawDialContextFunc | - | - |

**Returns**: `func`



### NewHTTPClient(cfg: Config)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cfg | Config | - | - |

**Returns**: (none)


