# API Reference: cacheguard.go

**Language**: Go

**Source**: `shared/platform/cacheguard/cacheguard.go`

---

## Classes

### VolatileMatch

**Inherits from**: (none)



### Input

**Inherits from**: (none)



### Result

**Inherits from**: (none)



### Guard

**Inherits from**: (none)



## Functions

### New()

**Returns**: (none)



### putEpoch(id: string, sum: [sha256.Size]byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | string | - | - |
| sum | [sha256.Size]byte | - | - |

**Returns**: (none)



### Inspect(input: Input) → (Result, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | Input | - | - |

**Returns**: `(Result, error)`



### StartNewEpoch(epochID: string, prefix: []byte) → (Result, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| epochID | string | - | - |
| prefix | []byte | - | - |

**Returns**: `(Result, error)`



### DetectVolatile(prefix: []byte)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| prefix | []byte | - | - |

**Returns**: (none)


