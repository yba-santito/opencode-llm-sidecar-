# API Reference: config_scan.go

**Language**: Go

**Source**: `proxy/internal/store/config_scan.go`

---

## Classes

### skillInfo

**Inherits from**: (none)



### configScan

**Inherits from**: (none)



## Functions

### claudeRoot() → string

**Returns**: `string`



### codexRoot() → string

**Returns**: `string`



### estimateTokens(text: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | string | - | - |

**Returns**: `int`



### scanConfig(cwd: string) → configScan

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cwd | string | - | - |

**Returns**: `configScan`



### configTaxPerTurn() → int

**Returns**: `int`



### readMarkdownConfig(unknown: scope, unknown: path, kind: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | scope | - | - |
| unknown | path | - | - |
| kind | string | - | - |

**Returns**: (none)



### scanSkills(skillsDir: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| skillsDir | string | - | - |

**Returns**: (none)



### readSkillFrontmatter(path: string) → (name, desc string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: `(name, desc string)`



### countHooks(settingsPath: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| settingsPath | string | - | - |

**Returns**: `int`



### countPlugins(pluginsPath: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pluginsPath | string | - | - |

**Returns**: `int`



### InsertConfigSnapshots(snaps: []ConfigSnapshot) → (int, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| snaps | []ConfigSnapshot | - | - |

**Returns**: `(int, error)`


