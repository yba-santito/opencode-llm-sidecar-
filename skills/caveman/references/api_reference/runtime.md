# API Reference: runtime.go

**Language**: Go

**Source**: `proxy/internal/nativeruntime/runtime.go`

---

## Classes

### Agent

**Inherits from**: (none)



### Session

**Inherits from**: (none)



### Event

**Inherits from**: (none)



### Model

**Inherits from**: (none)



### PayloadDigest

**Inherits from**: (none)



### TaskProfile

**Inherits from**: (none)



### Tool

**Inherits from**: (none)



### Request

**Inherits from**: (none)



### Response

**Inherits from**: (none)



### Runtime

**Inherits from**: (none)



### sessionActivity

**Inherits from**: (none)



### repositoryMapEntry

**Inherits from**: (none)



### profileFeatures

**Inherits from**: (none)



### evidenceRef

**Inherits from**: (none)



### storedTaskContract

**Inherits from**: (none)



## Functions

### newRuntime(store: *ccr.Store)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| store | *ccr.Store | - | - |

**Returns**: (none)



### New(store: *ccr.Store)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| store | *ccr.Store | - | - |

**Returns**: (none)



### NewWithReceipts(store: *ccr.Store, receiptDir: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| store | *ccr.Store | - | - |
| receiptDir | string | - | - |

**Returns**: (none)



### NewWithReceiptsAndUsage(store: *ccr.Store, receiptDir: string, usage: sessionusage.Reader)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| store | *ccr.Store | - | - |
| receiptDir | string | - | - |
| usage | sessionusage.Reader | - | - |

**Returns**: (none)



### resolveProfile(unknown: raw, policyMode: string) → (string, profileFeatures, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | raw | - | - |
| policyMode | string | - | - |

**Returns**: `(string, profileFeatures, error)`



### Handle(_: context.Context, request: Request) → (Response, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _ | context.Context | - | - |
| request | Request | - | - |

**Returns**: `(Response, error)`



### directOutputRewriteAgent(agentID: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| agentID | string | - | - |

**Returns**: `bool`



### deferredMaskContext(sessionID: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |

**Returns**: `(string, error)`



### recordSubagentState(request: Request, status: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | Request | - | - |
| status | string | - | - |

**Returns**: `error`



### mergeSubagentEvidence(request: Request) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | Request | - | - |

**Returns**: `error`



### IdleSnapshot() → (active int, lastActivity time.Time)

**Returns**: `(active int, lastActivity time.Time)`



### UniqueRecentSession(now: time.Time, window: time.Duration, unknown: provider, model: string) → (string, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| now | time.Time | - | - |
| window | time.Duration | - | - |
| unknown | provider | - | - |
| model | string | - | - |

**Returns**: `(string, string)`



### WaitForIdle(ctx: context.Context, idleTimeout: time.Duration) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| idleTimeout | time.Duration | - | - |

**Returns**: `bool`



### startRepositoryEvidence(request: Request)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | Request | - | - |

**Returns**: (none)



### markRepositorySessionEnded(sessionID: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |

**Returns**: (none)



### transitionAfterCompaction(sessionID: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |

**Returns**: `error`



### archiveSession(sessionID: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |

**Returns**: `error`



### repositoryEvidenceContext(request: Request) → (string, string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | Request | - | - |

**Returns**: `(string, string, error)`



### renderRepositoryEvidence(bundle: repointel.Bundle, ref: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| bundle | repointel.Bundle | - | - |
| ref | string | - | - |

**Returns**: `string`



### repositoryKey(session: Session) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| session | Session | - | - |

**Returns**: `string`



### joinContext(parts: ...string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parts | ...string | - | - |

**Returns**: `string`



### recordDecision(request: Request, response: Response) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | Request | - | - |
| response | Response | - | - |

**Returns**: `error`



### ensureTaskContract(request: Request) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | Request | - | - |

**Returns**: `(string, error)`



### normalizedTaskType(value: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | string | - | - |

**Returns**: `string`



### taskPolicy(taskType: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| taskType | string | - | - |

**Returns**: `string`



### taskContractContext(taskType: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| taskType | string | - | - |

**Returns**: `string`



### compactStateContext(sessionID: string) → (string, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| sessionID | string | - | - |

**Returns**: `(string, error)`



### beforeTool(request: Request, response: Response) → (Response, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | Request | - | - |
| response | Response | - | - |

**Returns**: `(Response, error)`



### priorRepeatCount(objects: []ccr.Object, recoveryRef: string) → int

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| objects | []ccr.Object | - | - |
| recoveryRef | string | - | - |

**Returns**: `int`



### reuseHintEligible(typeName: ccr.ObjectType, unknown: source, unknown: dependency, repositoryState: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| typeName | ccr.ObjectType | - | - |
| unknown | source | - | - |
| unknown | dependency | - | - |
| repositoryState | string | - | - |

**Returns**: `bool`



### repositoryStateMatches(unknown: observed, current: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | observed | - | - |
| current | string | - | - |

**Returns**: `bool`



### afterTool(request: Request, response: Response, allowMask: bool) → (Response, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | Request | - | - |
| response | Response | - | - |
| allowMask | bool | - | - |

**Returns**: `(Response, error)`



### maskWouldDiscardFacts(output: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| output | []byte | - | - |

**Returns**: `bool`



### firstNonEmptyValue(values: ...string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | ...string | - | - |

**Returns**: `string`



### captureTestImpact(request: Request, changedPath: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | Request | - | - |
| changedPath | string | - | - |

**Returns**: (none)



### invalidateDependency(unknown: sessionID, path: string) → error

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | sessionID | - | - |
| path | string | - | - |

**Returns**: `error`



### classifyTool(tool: *Tool) → (ccr.ObjectType, string, string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tool | *Tool | - | - |

**Returns**: `(ccr.ObjectType, string, string)`



### firstNonEmpty(values: ...string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | ...string | - | - |

**Returns**: `string`



### decisionID(request: Request, reason: string) → string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | Request | - | - |
| reason | string | - | - |

**Returns**: `string`


