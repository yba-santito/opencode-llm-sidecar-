# API Reference: toolschema_test.go

**Language**: Go

**Source**: `engine/compressors/toolschema_test.go`

---

## Functions

### TestToolSchemaPreservesSelectionTokens(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaPreservesEnvelopeAndMCPAnnotationTitle(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaPropertyNamedDescriptionSurvives(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaDependencyPropertyNamesSurvive(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaByteSafeOnMalformed(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaIdempotent(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaDescriptionTruncationStaysUTF8(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### forEachStringValue(v: any, fn: func(string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| v | any | - | - |
| fn | func(string | - | - |

**Returns**: (none)



### TestToolSchemaRetainsMarkerlessConstraints(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### mustJSON(s: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| s | string | - | - |

**Returns**: `string`



### TestToolSchemaAbbreviationNotSplit(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaKeepsDefault(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaRefIntegrity(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### assertRefsResolve(t: *testing.T, out: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| out | []byte | - | - |

**Returns**: (none)



### unresolvedInternalRefs(document: any)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| document | any | - | - |

**Returns**: (none)



### jsonPointerResolves(root: any, ref: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | any | - | - |
| ref | string | - | - |

**Returns**: `bool`



### decodeJSONPointerToken(encoded: string) → (string, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| encoded | string | - | - |

**Returns**: `(string, bool)`



### TestRefIntegrityGuardDetectsDrop(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRefIntegrityGuardDoesNotCrossToolSchemaRoots(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRefIntegrityGuardUsesNearestIDResourceRoot(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRefIntegrityGuardRejectsNonCanonicalArrayIndex(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestToolSchemaPreservesArgumentConstraints(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


