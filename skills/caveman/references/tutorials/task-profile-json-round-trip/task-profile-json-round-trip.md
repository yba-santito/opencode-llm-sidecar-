# How To: Task Profile Json Round Trip

**Difficulty**: Beginner
**Estimated Time**: 5 minutes

## Overview

Instantiate TaskProfile: A fully-populated profile survives JSON serialize + deserialize unchanged.

## Prerequisites

**Required Modules:**
- `__future__`
- `json`
- `dataclasses`
- `caveman_cloud`


## Step-by-Step Guide

### Step 1: Assign tp = TaskProfile(...)

```Python
tp = TaskProfile(quality_floor=0.98, alpha=7, candidate_allowlist=['anthropic/*'], candidate_denylist=['openai:gpt-5.5-pro'], max_p95_latency_delta_ms=500, max_error_delta=0.01, max_cost_ratio=0.5, cascade_enabled=True, cascade_tau=0.42, max_escalation_rate=0.2, stickiness='conversation', cross_provider=True, data_residency=['eu'], trusted_route_hints=['x-cave-route'])
```


## Complete Example

```Python
# Workflow
tp = TaskProfile(quality_floor=0.98, alpha=7, candidate_allowlist=['anthropic/*'], candidate_denylist=['openai:gpt-5.5-pro'], max_p95_latency_delta_ms=500, max_error_delta=0.01, max_cost_ratio=0.5, cascade_enabled=True, cascade_tau=0.42, max_escalation_rate=0.2, stickiness='conversation', cross_provider=True, data_residency=['eu'], trusted_route_hints=['x-cave-route'])
```

## Next Steps


---

*Source: test_task_profile.py:35 | Complexity: Beginner | Last updated: 2026-08-11*