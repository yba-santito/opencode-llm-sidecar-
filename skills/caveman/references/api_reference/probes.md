# API Reference: probes.go

**Language**: Go

**Source**: `engine/evals/probes.go`

---

## Classes

### RetentionProbe

**Inherits from**: (none)



### ProbeResult

**Inherits from**: (none)



### ProbeTally

**Inherits from**: (none)



### ProbeSummary

**Inherits from**: (none)



## Functions

### classifyProbes(probes: []RetentionProbe, output: []byte, recoverable: bool) → ([]ProbeResult, ProbeSummary, []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| probes | []RetentionProbe | - | - |
| output | []byte | - | - |
| recoverable | bool | - | - |

**Returns**: `([]ProbeResult, ProbeSummary, []string)`



### addProbeState(tally: *ProbeTally, state: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tally | *ProbeTally | - | - |
| state | string | - | - |

**Returns**: (none)



### mergeProbeSummary(dst: *ProbeSummary, src: ProbeSummary)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| dst | *ProbeSummary | - | - |
| src | ProbeSummary | - | - |

**Returns**: (none)


