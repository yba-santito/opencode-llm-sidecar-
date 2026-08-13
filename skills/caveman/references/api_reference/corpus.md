# API Reference: corpus.go

**Language**: Go

**Source**: `cacheengine/cachebench/corpus.go`

---

## Classes

### CorpusLimits

**Inherits from**: (none)



### CorpusMetadata

**Inherits from**: (none)



### CorpusToolFunction

**Inherits from**: (none)



### CorpusToolCall

**Inherits from**: (none)



### CorpusMessage

**Inherits from**: (none)



### CorpusRow

**Inherits from**: (none)



### AgentCorpus

**Inherits from**: (none)



### CorpusSummary

**Inherits from**: (none)



### lmcacheRowWire

**Inherits from**: (none)



### hfRowWire

**Inherits from**: (none)



### corpusSession

**Inherits from**: (none)



### corpusTokenCounter

**Inherits from**: (none)



## Functions

### DefaultCorpusLimits() → CorpusLimits

**Returns**: `CorpusLimits`



### ReadAgentCorpus(reader: io.Reader, format: string, metadata: CorpusMetadata, limits: CorpusLimits) → (AgentCorpus, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reader | io.Reader | - | - |
| format | string | - | - |
| metadata | CorpusMetadata | - | - |
| limits | CorpusLimits | - | - |

**Returns**: `(AgentCorpus, error)`



### normalizedCorpusLimits(limits: CorpusLimits) → (CorpusLimits, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| limits | CorpusLimits | - | - |

**Returns**: `(CorpusLimits, error)`



### readLMCacheJSONL(reader: io.Reader, limits: CorpusLimits) → ([]CorpusRow, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reader | io.Reader | - | - |
| limits | CorpusLimits | - | - |

**Returns**: `([]CorpusRow, error)`



### readHFRows(reader: io.Reader, limits: CorpusLimits) → ([]CorpusRow, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reader | io.Reader | - | - |
| limits | CorpusLimits | - | - |

**Returns**: `([]CorpusRow, error)`



### decodeOneJSON(raw: []byte, destination: any) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |
| destination | any | - | - |

**Returns**: `error`



### validateCorpusWire(wire: lmcacheRowWire, index: int, limits: CorpusLimits) → (CorpusRow, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| wire | lmcacheRowWire | - | - |
| index | int | - | - |
| limits | CorpusLimits | - | - |

**Returns**: `(CorpusRow, error)`



### validateCorpusMessage(message: CorpusMessage, limits: CorpusLimits) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| message | CorpusMessage | - | - |
| limits | CorpusLimits | - | - |

**Returns**: `error`



### appendCorpusRow(rows: *[]CorpusRow, sessions: map[string]bool, retainedBytes: *int64, row: CorpusRow, limits: CorpusLimits) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rows | *[]CorpusRow | - | - |
| sessions | map[string]bool | - | - |
| retainedBytes | *int64 | - | - |
| row | CorpusRow | - | - |
| limits | CorpusLimits | - | - |

**Returns**: `error`



### corpusRetainedBytes(rows: []CorpusRow) → int64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rows | []CorpusRow | - | - |

**Returns**: `int64`



### corpusRowRetainedBytes(row: CorpusRow) → int64

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| row | CorpusRow | - | - |

**Returns**: `int64`



### corpusDigest(rows: []CorpusRow) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rows | []CorpusRow | - | - |

**Returns**: `string`



### RunCorpus(ctx: context.Context, engine: *cacheengine.Engine, corpus: AgentCorpus, providers: []ProviderConfig, target: Target) → (Report, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| engine | *cacheengine.Engine | - | - |
| corpus | AgentCorpus | - | - |
| providers | []ProviderConfig | - | - |
| target | Target | - | - |

**Returns**: `(Report, error)`



### BuildCorpusTrace(provider: ProviderConfig, corpus: AgentCorpus) → (Trace, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | ProviderConfig | - | - |
| corpus | AgentCorpus | - | - |

**Returns**: `(Trace, error)`



### count(raw: []byte) → ([sha256.Size]byte, int)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw | []byte | - | - |

**Returns**: `([sha256.Size]byte, int)`



### analyzeCorpus(corpus: AgentCorpus, counter: *corpusTokenCounter) → (CorpusSummary, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| corpus | AgentCorpus | - | - |
| counter | *corpusTokenCounter | - | - |

**Returns**: `(CorpusSummary, error)`



### samePrefix(unknown: previous, current: []PrefixSegment) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | previous | - | - |
| current | []PrefixSegment | - | - |

**Returns**: `bool`



### percentileInt(sortedValues: []int, quantile: float64) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sortedValues | []int | - | - |
| quantile | float64 | - | - |

**Returns**: `int`



### corpusSource(sessionID: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |

**Returns**: `string`



### corpusPrefix(messages: []CorpusMessage, counter: *corpusTokenCounter) → ([]PrefixSegment, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []CorpusMessage | - | - |
| counter | *corpusTokenCounter | - | - |

**Returns**: `([]PrefixSegment, error)`



### buildCorpusTrace(provider: ProviderConfig, corpus: AgentCorpus, counter: *corpusTokenCounter) → (Trace, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | ProviderConfig | - | - |
| corpus | AgentCorpus | - | - |
| counter | *corpusTokenCounter | - | - |

**Returns**: `(Trace, error)`



### corpusStableIdentity(messages: []CorpusMessage, stableCount: int) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []CorpusMessage | - | - |
| stableCount | int | - | - |

**Returns**: `(string, error)`



### corpusProviderBody(provider: ProviderConfig, messages: []CorpusMessage) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | ProviderConfig | - | - |
| messages | []CorpusMessage | - | - |

**Returns**: `([]byte, error)`



### contentText(content: json.RawMessage) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | json.RawMessage | - | - |

**Returns**: `(string, error)`



### anthropicCorpusBody(model: string, messages: []CorpusMessage) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| model | string | - | - |
| messages | []CorpusMessage | - | - |

**Returns**: `([]byte, error)`



### bedrockCorpusBody(messages: []CorpusMessage) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []CorpusMessage | - | - |

**Returns**: `([]byte, error)`



### geminiCorpusBody(messages: []CorpusMessage) → ([]byte, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| messages | []CorpusMessage | - | - |

**Returns**: `([]byte, error)`


