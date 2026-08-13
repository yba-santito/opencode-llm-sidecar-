# API Reference: owned-install.js

**Language**: JavaScript

**Source**: `bin/lib/owned-install.js`

---

## Functions

### pathExists(target)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| target | None | - | - |

**Returns**: (none)



### safeRelative(value)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | None | - | - |

**Returns**: (none)



### destination(root, relativePath)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | None | - | - |
| relativePath | None | - | - |

**Returns**: (none)



### updateDigest(hash, root, target)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| hash | None | - | - |
| root | None | - | - |
| target | None | - | - |

**Returns**: (none)



### digestPath(target)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| target | None | - | - |

**Returns**: (none)



### copyPath(source, target)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | None | - | - |
| target | None | - | - |

**Returns**: (none)



### removePath(target)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| target | None | - | - |

**Returns**: (none)



### atomicJSON(target, value)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| target | None | - | - |
| value | None | - | - |

**Returns**: (none)



### emptyJournal(integration)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| integration | None | - | - |

**Returns**: (none)



### loadJournal(journalPath, integration)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| journalPath | None | - | - |
| integration | None | - | - |

**Returns**: (none)



### backupCurrent(root, backupRoot, relative, entry)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | None | - | - |
| backupRoot | None | - | - |
| relative | None | - | - |
| entry | None | - | - |

**Returns**: (none)



### journalPaths(root, integration)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | None | - | - |
| integration | None | - | - |

**Returns**: (none)



### writeJournal(journalPath, journal)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| journalPath | None | - | - |
| journal | None | - | - |

**Returns**: (none)



### preflightOwnedInstall({ root, integration, operations, force = false })

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| { root | None | - | - |
| integration | None | - | - |
| operations | None | - | - |
| force | None | false } | - |

**Returns**: (none)



### installOwned({ root, integration, operations, force = false, note = ()

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| { root | None | - | - |
| integration | None | - | - |
| operations | None | - | - |
| force | None | false | - |
| note | None | ( | - |

**Returns**: (none)



### uninstallOwned({ root, integration, dryRun = false, note = ()

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| { root | None | - | - |
| integration | None | - | - |
| dryRun | None | false | - |
| note | None | ( | - |

**Returns**: (none)


