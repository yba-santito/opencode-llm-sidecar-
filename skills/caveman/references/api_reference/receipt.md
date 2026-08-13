# API Reference: receipt.go

**Language**: Go

**Source**: `proxy/internal/nativeruntime/receipt.go`

---

## Classes

### ReceiptMetric

**Inherits from**: (none)



### Receipt

**Inherits from**: (none)



## Functions

### writeReceipt(request: Request) → (*Receipt, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | Request | - | - |

**Returns**: `(*Receipt, error)`



### observedOutcome(unknown: succeeded, failed: bool) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | succeeded | - | - |
| failed | bool | - | - |

**Returns**: `string`



### compactReceiptLine(receipt: *Receipt) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| receipt | *Receipt | - | - |

**Returns**: `string`



### trimCCRReference(value: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `string`



### atomicReceipt(path: string, data: []byte) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| data | []byte | - | - |

**Returns**: `error`


