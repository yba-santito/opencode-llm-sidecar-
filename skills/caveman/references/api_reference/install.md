# API Reference: install.js

**Language**: JavaScript

**Source**: `bin/install.js`

---

## Functions

### parseArgs(argv)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| argv | None | - | - |

**Returns**: (none)



### die(msg)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| msg | None | - | - |

**Returns**: (none)



### makeChalk(noColor)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| noColor | None | - | - |

**Returns**: (none)



### checkWslWindowsNode()

**Returns**: (none)



### checkNodeVersion()

**Returns**: (none)



### hasCmd(cmd)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cmd | None | - | - |

**Returns**: (none)



### shellEscape(s)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | None | - | - |

**Returns**: (none)



### expandHome(p)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | None | - | - |

**Returns**: (none)



### vscodeExtPresent(needle)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| needle | None | - | - |

**Returns**: (none)



### cursorExtPresent(needle)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| needle | None | - | - |

**Returns**: (none)



### jetbrainsPresent()

**Returns**: (none)



### jetbrainsPluginPresent(needle)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| needle | None | - | - |

**Returns**: (none)



### walkDir(root, depth)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | None | - | - |
| depth | None | - | - |

**Returns**: (none)



### macAppPresent(name)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | None | - | - |

**Returns**: (none)



### detectMatch(spec)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| spec | None | - | - |

**Returns**: (none)



### safeStat(p, method)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | None | - | - |
| method | None | - | - |

**Returns**: (none)



### detectRepoRoot()

**Returns**: (none)



### spawnXplat(cmd, args, opts)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cmd | None | - | - |
| args | None | - | - |
| opts | None | - | - |

**Returns**: (none)



### runSpawn(cmd, args, opts, dry)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cmd | None | - | - |
| args | None | - | - |
| opts | None | - | - |
| dry | None | - | - |

**Returns**: (none)



### sameFilesystemTmpEnv(configDir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| configDir | None | - | - |

**Returns**: (none)



### captureSpawn(cmd, args)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cmd | None | - | - |
| args | None | - | - |

**Returns**: (none)



### spawnOk(r)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| r | None | - | - |

**Returns**: (none)



### absoluteNodePath()

**Returns**: (none)



### installClaude(ctx)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | None | - | - |

**Returns**: (none)



### installGemini(ctx)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | None | - | - |

**Returns**: (none)



### installViaSkills(ctx, prov)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | None | - | - |
| prov | None | - | - |

**Returns**: (none)



### hermesConfigDir()

**Returns**: (none)



### installHermes(ctx)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | None | - | - |

**Returns**: (none)



### opencodeConfigDir()

**Returns**: (none)



### installOpencode(ctx)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | None | - | - |

**Returns**: (none)



### installOpenclaw(ctx)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | None | - | - |

**Returns**: (none)



### installHooks(ctx)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | None | - | - |

**Returns**: (none)



### installMcpShrink(ctx)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | None | - | - |

**Returns**: (none)



### runInit(ctx)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | None | - | - |

**Returns**: (none)



### downloadTo(url, dest)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| url | None | - | - |
| dest | None | - | - |

**Returns**: (none)



### sha256File(p)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| p | None | - | - |

**Returns**: (none)



### loadRemoteHookChecksums()

**Async function**

**Returns**: (none)



### uninstall(ctx)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | None | - | - |

**Returns**: (none)



### promptForOnly(detected)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| detected | None | - | - |

**Returns**: (none)



### printList(noColor)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| noColor | None | - | - |

**Returns**: (none)



### pad(s, n)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | None | - | - |
| n | None | - | - |

**Returns**: (none)



### printHelp()

**Returns**: (none)



### main()

**Async function**

**Returns**: (none)



### wrap(codes)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| codes | None | - | - |

**Returns**: (none)



### want(id)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | None | - | - |

**Returns**: (none)



### explicit(id)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | None | - | - |

**Returns**: (none)


