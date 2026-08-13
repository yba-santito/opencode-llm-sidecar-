# API Reference: openaicompat_test.go

**Language**: Go

**Source**: `proxy/providers/openaicompat/openaicompat_test.go`

---

## Functions

### TestNew_DefaultRouteStripsMountAndPreservesBasePathAndQuery(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestNew_DefaultRouteDoesNotConfuseSimilarPrefixes(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestNew_DefaultRouteRespectsPerRequestBaseURL(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCompatRoutesRejectAmbiguousEncodedAndDotSegments(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCompatRoutesPreserveConfiguredAndRequestQueries(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestCompatBaseURLValidationIsStrict(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### mustNamed(t: *testing.T, unknown: name, baseURL: string) → providers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |
| unknown | name | - | - |
| baseURL | string | - | - |

**Returns**: `providers`



### TestNewNamed_RouteAndResolve(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestNewNamed_RouteContextBaseURLDoesNotOverridePerNameBase(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestNewNamed_RejectsInvalidAndReservedNames(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


