# How To: Record Span Maps Genai Attributes And Ids

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: test record span maps genai attributes and ids

## Prerequisites

**Required Modules:**
- `__future__`
- `json`
- `threading`
- `typing`
- `unittest.mock`
- `caveman_cloud`


## Step-by-Step Guide

### Step 1: Assign cave = Cave(...)

```Python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='billing-agent')
```

### Step 2: Assign exp = cave.exporter(...)

```Python
exp = cave.exporter()
```

### Step 3: Assign span = exp.record_span(...)

```Python
span = exp.record_span('chat gpt-5.5', provider='openai', model='gpt-5.5', operation='chat', input_tokens=1200, output_tokens=350, cached_tokens=800, cost_usd=0.0145, workflow='invoice-flow')
```

**Verification:**
```Python
assert isinstance(span, OTelSpan)
```

### Step 4: Assign attrs = value

```Python
attrs = span.attributes
```

**Verification:**
```Python
assert attrs['gen_ai.provider.name'] == 'openai'
```


## Complete Example

```Python
# Workflow
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='billing-agent')
exp = cave.exporter()
span = exp.record_span('chat gpt-5.5', provider='openai', model='gpt-5.5', operation='chat', input_tokens=1200, output_tokens=350, cached_tokens=800, cost_usd=0.0145, workflow='invoice-flow')
assert isinstance(span, OTelSpan)
assert len(span.trace_id) == 32
assert len(span.span_id) == 16
assert exp.pending == 1
attrs = span.attributes
assert attrs['gen_ai.provider.name'] == 'openai'
assert attrs['gen_ai.request.model'] == 'gpt-5.5'
assert attrs['gen_ai.response.model'] == 'gpt-5.5'
assert attrs['gen_ai.operation.name'] == 'chat'
assert attrs['gen_ai.usage.input_tokens'] == 1200
assert attrs['gen_ai.usage.output_tokens'] == 350
assert attrs['gen_ai.usage.cache_read.input_tokens'] == 800
assert attrs['gen_ai.usage.cost_usd'] == 0.0145
assert attrs['cave.agent'] == 'billing-agent'
assert attrs['cave.workflow'] == 'invoice-flow'
```

## Next Steps


---

*Source: test_exporter.py:44 | Complexity: Intermediate | Last updated: 2026-08-11*