# API Reference: settings.js

**Language**: JavaScript

**Source**: `bin/lib/settings.js`

---

## Functions

### stripJsonComments(src)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| src | None | - | - |

**Returns**: (none)



### stripTrailingCommas(src)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| src | None | - | - |

**Returns**: (none)



### readSettings(p)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | None | - | - |

**Returns**: (none)



### writeSettings(p, obj)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | None | - | - |
| obj | None | - | - |

**Returns**: (none)



### validateHookFields(settings)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| settings | None | - | - |

**Returns**: (none)



### hasCavemanHook(settings, event, marker = 'caveman')

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| settings | None | - | - |
| event | None | - | - |
| marker | None | 'caveman' | - |

**Returns**: (none)



### addCommandHook(settings, event, opts)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| settings | None | - | - |
| event | None | - | - |
| opts | None | - | - |

**Returns**: (none)



### tokenizeCommand(command)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| command | None | - | - |

**Returns**: (none)



### referencesManagedScript(command)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| command | None | - | - |

**Returns**: (none)



### removeCavemanHooks(settings)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| settings | None | - | - |

**Returns**: (none)



### rewriteLegacyManagedHookCommands(settings, absoluteNode)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| settings | None | - | - |
| absoluteNode | None | - | - |

**Returns**: (none)



### pruneOrphanedManagedHooks(settings, configDir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| settings | None | - | - |
| configDir | None | - | - |

**Returns**: (none)



### claudeConfigDir()

**Returns**: (none)



### targetMissing(command)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| command | None | - | - |

**Returns**: (none)


