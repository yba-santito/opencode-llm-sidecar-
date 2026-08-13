# API Reference: breakers.ts

**Language**: TypeScript

**Source**: `packages/agent/src/breakers.ts`

---

## Classes

### BreakerState

**Inherits from**: (none)

#### Methods

##### constructor(config: NormalizedBreakers)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| config | NormalizedBreakers | - | - |


##### tripped()


##### recorded()


##### observeToolCall(input: {
    toolCallId: string;
    toolName: string;
    args: unknown;
    allowRepeat: boolean;
    turnKey: unknown;
  })

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | {
    toolCallId: string;
    toolName: string;
    args: unknown;
    allowRepeat: boolean;
    turnKey: unknown;
  } | - | - |


##### observeToolResult(toolCallId: string, isError: boolean)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| toolCallId | string | - | - |
| isError | boolean | - | - |


##### observeTurn(conclusion: string, toolResults: readonly unknown[], stateChanged = false)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| conclusion | string | - | - |
| toolResults | readonly unknown[] | - | - |
| stateChanged | None | false | - |


##### retryExposureAvailable(amount: number, attempt: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| amount | number | - | - |
| attempt | number | - | - |


##### recordRetryAttempt(amount: number, attempt: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| amount | number | - | - |
| attempt | number | - | - |


##### recordRetryExhausted(attempt: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| attempt | number | - | - |


##### settleRetry(attempt: number, measuredSpend: number, spendBasis: NonNullable<BreakerEvent["spendBasis"]>)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| attempt | number | - | - |
| measuredSpend | number | - | - |
| spendBasis | NonNullable<BreakerEvent["spendBasis"]> | - | - |


##### backoffMs(attempt: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| attempt | number | - | - |




## Functions

### normalizeRunBreakers(breakers: RunBreakers, hasBudget: boolean)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| breakers | RunBreakers | - | - |
| hasBudget | boolean | - | - |

**Returns**: (none)



### callSignature(toolName: string, args: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| toolName | string | - | - |
| args | unknown | - | - |

**Returns**: (none)


