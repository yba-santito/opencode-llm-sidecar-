# API Reference: axtree_test.go

**Language**: Go

**Source**: `engine/compressors/axtree_test.go`

---

## Functions

### TestAXTreeCuratesIgnoredAndGenericNodes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAXTreeMalformedFailsClosed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAXTreeDanglingChildBecomesLeaf(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAXTreeUIDsAreUniqueAcrossFramesAndDuplicates(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAXTreeUnknownStateTokenIsNotInvented(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAXTreeHighNoiseFixtureReducesIgnoredNodesAndTokens(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAXTreeCapturedFixtureCompactGoldenAndTokenBudget(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAXTreeQueryKeepsBestMatchesAncestorsAndVisibleUIDsOnly(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestAXTreeQueryMissIsExplicitAndHasNoGuessableTargets(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### FuzzAXTreeDeterministicAndFailClosed(f: *testing.F)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| f | *testing.F | - | - |

**Returns**: (none)



### compactAXUIDs(snapshot: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| snapshot | string | - | - |

**Returns**: (none)


