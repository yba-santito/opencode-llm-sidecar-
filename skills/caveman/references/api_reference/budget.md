# API Reference: budget.ts

**Language**: TypeScript

**Source**: `packages/agent/src/budget.ts`

---

## Classes

### BudgetMeter

**Inherits from**: (none)

#### Methods

##### constructor(normalized: NormalizedBudget)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| normalized | NormalizedBudget | - | - |


##### settled()


##### released()


##### revoked()


##### capBreached()


##### overspent()


##### tranches()


##### remaining()


##### releasable()


##### release(amount: number, reason: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| amount | number | - | - |
| reason | string | - | - |


##### reserve(amount: number, outputTokenCap: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| amount | number | - | - |
| outputTokenCap | number | - | - |


##### hold(amount: number, outputTokenCap: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| amount | number | - | - |
| outputTokenCap | number | - | - |


##### carve(amount: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| amount | number | - | - |


##### settleCarve(carve: BudgetCarve)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| carve | BudgetCarve | - | - |


##### settle(reservation: BudgetReservation, actual: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reservation | BudgetReservation | - | - |
| actual | number | - | - |


##### cancel(reservation: BudgetReservation)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reservation | BudgetReservation | - | - |


##### revoke()


##### calls()




### ReceiptRecorder

**Inherits from**: (none)

#### Methods

##### recordCall(call: ReceiptCall)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| call | ReceiptCall | - | - |


##### recordCompaction(compaction: PendingCompaction)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| compaction | PendingCompaction | - | - |


##### recordToolCall(name: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |


##### recordToolOutcome(name: string, isError: boolean)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | string | - | - |
| isError | boolean | - | - |


##### recordSubagent(receipt: RunReceipt)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| receipt | RunReceipt | - | - |


##### build(input: {
    runId: string;
    agentId: string;
    stopReason: RunStopReason;
    meter: BudgetMeter | undefined;
    breakers?: readonly BreakerEvent[];
  })

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input | {
    runId: string;
    agentId: string;
    stopReason: RunStopReason;
    meter: BudgetMeter | undefined;
    breakers?: readonly BreakerEvent[];
  } | - | - |




### BudgetController

**Inherits from**: (none)

#### Methods

##### releaseBudget(amount: number, reason: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| amount | number | - | - |
| reason | string | - | - |


##### spent()


##### remaining()


##### released()


##### max()


##### denomination()


##### tranches()


##### meter()




## Functions

### normalizeRunBudget(budget: RunBudget)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| budget | RunBudget | - | - |

**Returns**: (none)



### callCeilingCost(denomination: BudgetDenomination, call: CallCeiling, outputTokens: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| denomination | BudgetDenomination | - | - |
| call | CallCeiling | - | - |
| outputTokens | number | - | - |

**Returns**: (none)



### callFitsBudget(meter: BudgetMeter, call: CallCeiling)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| meter | BudgetMeter | - | - |
| call | CallCeiling | - | - |

**Returns**: (none)



### modelIsPriced(provider: string, model: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| model | string | - | - |

**Returns**: (none)



### inputTokenCeiling(serializedBytes: number, messageCount: number, contextWindow: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| serializedBytes | number | - | - |
| messageCount | number | - | - |
| contextWindow | number | - | - |

**Returns**: (none)



### serializedContextBytes(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### roundUsd(value: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | number | - | - |

**Returns**: (none)



### modeledNetTokens(entry: PendingCompaction, workingCallsAfter: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| entry | PendingCompaction | - | - |
| workingCallsAfter | number | - | - |

**Returns**: (none)



### budgetExhaustionContext(meter: BudgetMeter)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| meter | BudgetMeter | - | - |

**Returns**: (none)



### createBudgetController()

**Returns**: (none)



### bindBudgetController(controller: BudgetController, meter: BudgetMeter)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| controller | BudgetController | - | - |
| meter | BudgetMeter | - | - |

**Returns**: (none)



### unbindBudgetController(controller: BudgetController)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| controller | BudgetController | - | - |

**Returns**: (none)



### planCall(meter: BudgetMeter | undefined, call: CallCeiling, compactionAvailable: boolean)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| meter | BudgetMeter | undefined | - | - |
| call | CallCeiling | - | - |
| compactionAvailable | boolean | - | - |

**Returns**: (none)



### affordableOutputTokens(meter: BudgetMeter, call: CallCeiling)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| meter | BudgetMeter | - | - |
| call | CallCeiling | - | - |

**Returns**: (none)


