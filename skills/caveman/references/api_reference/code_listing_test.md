# API Reference: code_listing_test.go

**Language**: Go

**Source**: `engine/compressors/code_listing_test.go`

---

## Functions

### alpha(a: int) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| a | int | - | - |

**Returns**: `int`



### beta(b: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | string | - | - |

**Returns**: `string`



### gutter(unknown: source, sep: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | source | - | - |
| sep | string | - | - |

**Returns**: `string`



### TestSplitLineNumberedListingRoundTrips(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestSplitLineNumberedListingRejectsNonListings(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRestoreKeepsOriginalNumbersOnLineElidingOutput(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)



### TestRestoreDeclinesGutterOnRestructuredOutput(t: *testing.T)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| t | *testing.T | - | - |

**Returns**: (none)


