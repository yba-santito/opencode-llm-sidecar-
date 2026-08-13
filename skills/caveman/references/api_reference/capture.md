# API Reference: capture.go

**Language**: Go

**Source**: `proxy/internal/gateway/capture.go`

---

## Classes

### bodyCapture

**Inherits from**: (none)



### capturedRequest

**Inherits from**: (none)



### captureMeta

**Inherits from**: (none)



### captureBody

**Inherits from**: (none)



### captureJob

**Inherits from**: (none)



### resolvedBody

**Inherits from**: (none)



## Functions

### newBodyCapture(dir: string, logger: *slog.Logger)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| dir | string | - | - |
| logger | *slog.Logger | - | - |

**Returns**: (none)



### wholeBody(b: []byte) → captureBody

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| b | []byte | - | - |

**Returns**: `captureBody`



### streamedBody(total: int, sumHex: string) → captureBody

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| total | int | - | - |
| sumHex | string | - | - |

**Returns**: `captureBody`



### record(meta: captureMeta, unknown: client, upstream: captureBody)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| meta | captureMeta | - | - |
| unknown | client | - | - |
| upstream | captureBody | - | - |

**Returns**: (none)



### drop()

**Returns**: (none)



### flush()

**Returns**: (none)



### run()

**Returns**: (none)



### write(job: captureJob)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| job | captureJob | - | - |

**Returns**: (none)



### resolve() → resolvedBody

**Returns**: `resolvedBody`



### sanitizeCaptureID(id: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | string | - | - |

**Returns**: `string`


