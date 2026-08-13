# API Reference: openclaw.js

**Language**: JavaScript

**Source**: `bin/lib/openclaw.js`

---

## Functions

### resolveWorkspace(env = process.env)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| env | None | process.env | - |

**Returns**: (none)



### readIfExists(p)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | None | - | - |

**Returns**: (none)



### sameFile(left, right)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| left | None | - | - |
| right | None | - | - |

**Returns**: (none)



### digest(content)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | None | - | - |

**Returns**: (none)



### sameSnapshot(left, right)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| left | None | - | - |
| right | None | - | - |

**Returns**: (none)



### readRegularIfExists(p)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | None | - | - |

**Returns**: (none)



### atomicWriteRegular(p, content, expectedStat)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | None | - | - |
| content | None | - | - |
| expectedStat | None | - | - |

**Returns**: (none)



### cryptoRandom()

**Returns**: (none)



### unlinkRegular(p, expectedStat)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | None | - | - |
| expectedStat | None | - | - |

**Returns**: (none)



### ensureRealDirectory(p, create = false)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | None | - | - |
| create | None | false | - |

**Returns**: (none)



### restoreRegularSnapshot(p, snapshot)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | None | - | - |
| snapshot | None | - | - |

**Returns**: (none)



### splitFrontmatter(src)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| src | None | - | - |

**Returns**: (none)



### frontmatterHasKey(fm, key)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| fm | None | - | - |
| key | None | - | - |

**Returns**: (none)



### mergeOpenclawFrontmatter(src, opts = {})

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| src | None | - | - |
| opts | None | {} | - |

**Returns**: (none)



### loadBootstrapSnippet(repoRoot)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| repoRoot | None | - | - |

**Returns**: (none)



### loadSkillBody(repoRoot)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| repoRoot | None | - | - |

**Returns**: (none)



### stripAllBootstrapBlocks(text)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | None | - | - |

**Returns**: (none)



### appendBootstrapToSoul(soulPath, snippet)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| soulPath | None | - | - |
| snippet | None | - | - |

**Returns**: (none)



### stripBootstrapFromSoul(soulPath)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| soulPath | None | - | - |

**Returns**: (none)



### installOpenclaw({ workspace, repoRoot, dryRun = false, force = false, log = noopLog()

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| { workspace | None | - | - |
| repoRoot | None | - | - |
| dryRun | None | false | - |
| force | None | false | - |
| log | None | noopLog( | - |

**Returns**: (none)



### uninstallOpenclaw({ workspace, dryRun = false, log = noopLog()

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| { workspace | None | - | - |
| dryRun | None | false | - |
| log | None | noopLog( | - |

**Returns**: (none)



### noopLog()

**Returns**: (none)



### count(s, sub)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | None | - | - |
| sub | None | - | - |

**Returns**: (none)


