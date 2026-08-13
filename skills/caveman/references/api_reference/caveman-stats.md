# API Reference: caveman-stats.js

**Language**: JavaScript

**Source**: `src/hooks/caveman-stats.js`

---

## Functions

### ruleOverheadPerTurn()

**Returns**: (none)



### priceForModel(model)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | None | - | - |

**Returns**: (none)



### formatUsd(amount)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| amount | None | - | - |

**Returns**: (none)



### findRecentSession(claudeDir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| claudeDir | None | - | - |

**Returns**: (none)



### parseSession(filePath)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| filePath | None | - | - |

**Returns**: (none)



### findCompressedPairs(dirs)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| dirs | None | - | - |

**Returns**: (none)



### summarizeCompressed(pairs)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pairs | None | - | - |

**Returns**: (none)



### readModeLog(logPath)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| logPath | None | - | - |

**Returns**: (none)



### attributeByMode({ messages, modeLog, mode, flagMtimeMs, outputTokens })

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| { messages | None | - | - |
| modeLog | None | - | - |
| mode | None | - | - |
| flagMtimeMs | None | - | - |
| outputTokens } | None | - | - |

**Returns**: (none)



### wholeSessionAttribution(mode, outputTokens)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| mode | None | - | - |
| outputTokens | None | - | - |

**Returns**: (none)



### deriveSavings({ byMode, model })

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| { byMode | None | - | - |
| model } | None | - | - |

**Returns**: (none)



### deriveNet({ estSavedTokens, turns })

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| { estSavedTokens | None | - | - |
| turns } | None | - | - |

**Returns**: (none)



### netLines({ estSavedTokens, turns })

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| { estSavedTokens | None | - | - |
| turns } | None | - | - |

**Returns**: (none)



### parseDuration(spec)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| spec | None | - | - |

**Returns**: (none)



### aggregateHistory(historyPath, sinceMs)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| historyPath | None | - | - |
| sinceMs | None | - | - |

**Returns**: (none)



### outputReductionPct(savedTokens, usedTokens)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| savedTokens | None | - | - |
| usedTokens | None | - | - |

**Returns**: (none)



### humanizeTokens(n)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n | None | - | - |

**Returns**: (none)



### formatHistory({ sessions, outputTokens, estSavedTokens, estSavedUsd, netSavedTokens, netTurns, since })

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| { sessions | None | - | - |
| outputTokens | None | - | - |
| estSavedTokens | None | - | - |
| estSavedUsd | None | - | - |
| netSavedTokens | None | - | - |
| netTurns | None | - | - |
| since } | None | - | - |

**Returns**: (none)



### formatShare({ outputTokens, turns, mode, model, attribution })

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| { outputTokens | None | - | - |
| turns | None | - | - |
| mode | None | - | - |
| model | None | - | - |
| attribution } | None | - | - |

**Returns**: (none)



### formatStats({ outputTokens, cacheReadTokens, turns, mode, model, sessionPath, compressed, attribution })

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| { outputTokens | None | - | - |
| cacheReadTokens | None | - | - |
| turns | None | - | - |
| mode | None | - | - |
| model | None | - | - |
| sessionPath | None | - | - |
| compressed | None | - | - |
| attribution } | None | - | - |

**Returns**: (none)



### main()

**Returns**: (none)



### norm(v)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | None | - | - |

**Returns**: (none)



### add(key, tokens)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| key | None | - | - |
| tokens | None | - | - |

**Returns**: (none)


