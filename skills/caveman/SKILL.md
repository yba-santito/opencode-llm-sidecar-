---
name: caveman
description: Understand and work with the caveman codebase — Cave SDK (context pack, tool_search, trace/exporter, runtime policy, openai/otel), the go server and Python/TS/JS SDKs — using design patterns, test examples, dependency graph, config patterns, and project docs extracted from the repo. Use when building, modifying, testing, or explaining juliusbrussee/caveman.
doc_version: 
---

# caveman Codebase

## Description

Local codebase analysis and documentation generated from code analysis.

**Path:** `/tmp/caveman-build/caveman`
**Files Analyzed:** 570
**Languages:** Python, JavaScript, Go, TypeScript
**Analysis Depth:** deep

## When to Use This Skill

Use this skill when you need to:
- Understand the codebase architecture and design patterns
- Find implementation examples and usage patterns
- Review API documentation extracted from code
- Check configuration patterns and best practices
- Explore test examples and real-world usage
- Navigate the codebase structure efficiently

## ⚡ Quick Reference

### Codebase Statistics

**Languages:**
- **Go**: 459 files (80.5%)
- **Python**: 43 files (7.5%)
- **TypeScript**: 37 files (6.5%)
- **JavaScript**: 31 files (5.4%)

**Analysis Performed:**
- ✅ API Reference (C2.5)
- ✅ Dependency Graph (C2.6)
- ✅ Design Patterns (C3.1)
- ✅ Test Examples (C3.2)
- ✅ Configuration Patterns (C3.4)
- ✅ Architectural Analysis (C3.7)
- ✅ Project Documentation (C3.9)

### 🎨 Design Patterns Detected

*From C3.1 codebase analysis (confidence > 0.7)*

- **Strategy**: 17 instances
- **Adapter**: 12 instances
- **Factory**: 2 instances
- **Observer**: 1 instances

*Total: 24 high-confidence patterns*

*See `references/patterns/` for complete pattern analysis*

## 📝 Code Examples

*High-quality examples extracted from test files (C3.2)*

**Workflow: test context pack maps wire and exact deferred ids** (complexity: 1.00)

```python
captured: list[urllib.request.Request] = []
response = {'items': [{'id': 'deploy', 'text': 'server copy is ignored'}], 'tokens_used': 30, 'tokens_before': 75, 'tokens_saved': 45, 'deferred_count': 2, 'deferred_ids': ['intro', 'billing'], 'basis': 'inferred'}

def fake_urlopen(req: urllib.request.Request, timeout: float) -> MagicMock:
    captured.append(req)
    assert timeout == 30
    return _response(response)
items = [ContextPackItem(id='intro', text='overview', tokens=20), ContextPackItem(id='deploy', text='deploy ERROR', tokens=30, pin=True), ContextPackItem(id='billing', text='billing polish', tokens=25)]
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    result = _cave().context.pack('deploy failure', items, ContextPackOptions(max_tokens=30, reserve_tokens=5, recency_half_life_ms=3600000))
assert len(captured) == 1
assert captured[0].full_url == 'http://localhost:8787/sdk/v1/context/pack'
assert captured[0].get_method() == 'POST'
body = captured[0].data
assert isinstance(body, bytes)
assert json.loads(body) == {'query': 'deploy failure', 'items': [{'id': 'intro', 'text': 'overview', 'tokens': 20}, {'id': 'deploy', 'text': 'deploy ERROR', 'tokens': 30, 'pin': True}, {'id': 'billing', 'text': 'billing polish', 'tokens': 25}], 'options': {'max_tokens': 30, 'reserve_tokens': 5, 'recency_half_life_ms': 3600000}}
assert result.items == [items[1]]
assert result.deferred_ids == ['intro', 'billing']
assert result.deferred_count == 2
assert result.tokens_saved == 45
assert result.basis == 'inferred'
```

**Test: TestRulesRouterFailsClosedForUnknownDemandedCaps** (complexity: 1.00)

```go
f := Features{
		Provider:         "openai",
		Endpoint:         "/openai/v1/responses",
		CurrentModel:     "cave-auto",
		BaselineModel:    "gpt-5.5",
		BaselinePrice:    price(5, 30),
		ToolsCount:       1,
		JSONMode:         true,
		BodyModelRewrite: true,
	}
```

**Workflow: test synchronous and asynchronous failures emit error without exception leakage** (complexity: 1.00)

```python
captured, fake_urlopen = _capture()
sync_error = RuntimeError('private-sync-exception-message')

def sync_failure() -> Any:
    raise sync_error
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    with _cave().trace(trace_id=TRACE_ID, span_id=SPAN_ID) as trace:
        with pytest.raises(RuntimeError) as raised:
            trace.tool('sync-danger', {}, sync_failure)
assert raised.value is sync_error
_assert_event(captured[0], name='sync-danger', outcome='error', sequence=1)
assert sync_error.args[0] not in json.dumps(captured[0]['body'])
captured, fake_urlopen = _capture()
async_error = RuntimeError('private-async-exception-message')

async def async_failure() -> Any:
    raise async_error

async def run_async_failure() -> None:
    with patch('urllib.request.urlopen', side_effect=fake_urlopen):
        with _cave().trace(trace_id=TRACE_ID, span_id=SPAN_ID) as trace:
            await trace.tool('async-danger', {}, async_failure)
with pytest.raises(RuntimeError) as raised:
    asyncio.run(run_async_failure())
assert raised.value is async_error
_assert_event(captured[0], name='async-danger', outcome='error', sequence=1)
wire = json.dumps(captured[0]['body'])
assert async_error.args[0] not in wire
assert 'traceback' not in wire
```

**Workflow: test telemetry failure never changes successful return or original throw** (complexity: 1.00)

```python
captured, fake_urlopen = _capture(fail=True)
value = {'preserved': True}
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    with _cave().trace(trace_id=TRACE_ID, span_id=SPAN_ID) as trace:
        assert trace.tool('ok', {}, lambda: value) is value
_assert_event(captured[0], name='ok', outcome='ok', sequence=1)
captured, fake_urlopen = _capture(fail=True)
original = RuntimeError('original-tool-secret')

def fail() -> Any:
    raise original
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    with _cave().trace(trace_id=TRACE_ID, span_id=SPAN_ID) as trace:
        with pytest.raises(RuntimeError) as raised:
            trace.tool('bad', {}, fail)
assert raised.value is original
_assert_event(captured[0], name='bad', outcome='error', sequence=1)
assert original.args[0] not in json.dumps(captured[0]['body'])
```

**Test: TestCompressCCRErrorPreservesPassThroughTokenAccounting** (complexity: 1.00)

```go
eng := mockEngine{
		compress: func([]byte, engine.Options) (engine.Result, error) {
			return engine.Result{
				Output:       []byte(original),
				Ratio:        0,
				TokensBefore: 8,
				TokensAfter:  8,
				Basis:        engine.BasisInferred,
				ContentType:  "json",
			}
```

**Workflow: The pin is stored the moment the signature verifies — BEFORE the schema
and sequence checks. A validly signed bundle this client refuses on its
contents has still proven which key the server signs with, so it must not
leave the client downgradeable to unsigned.** (complexity: 1.00)

```python
'The pin is stored the moment the signature verifies — BEFORE the schema\n    and sequence checks. A validly signed bundle this client refuses on its\n    contents has still proven which key the server signs with, so it must not\n    leave the client downgradeable to unsigned.'
client = _make_cave().runtime_policy()
future = json.loads(BUNDLE)
future['schema_version'] = 'caveman.runtime-policy.v2'
rejected = _refresh_with(client, _sign_bundle(json.dumps(future)))
assert (rejected.ok, rejected.error) == (False, 'unknown_schema_version')
assert client.state().has_bundle is False
unsigned = _refresh_with(client, _unsigned_payload())
assert (unsigned.ok, unsigned.error) == (False, 'unsigned_rejected')
assert client.state().has_bundle is False
assert _refresh_with(client, _signed_payload()).ok is True
assert client.state().signed is True
```

**Workflow: test decision span rides the existing exporter** (complexity: 1.00)

```python
cave = _make_cave()
client = _make_cave().runtime_policy(public_key=PINNED_KEY)
assert _refresh_with(client, _signed_payload()).ok is True
exporter = cave.exporter()
client.decide('fix_failing_test_with_stacktrace', 'task-a', {'stack_trace_location_confidence': 0.95, 'language': 'typescript'}, exporter)
assert exporter.pending == 1
payload = exporter.build_payload()
span = payload['resourceSpans'][0]['scopeSpans'][0]['spans'][0]
assert span['name'] == 'caveman.policy.decision'
assert span['kind'] == 1
attrs = _span_attributes(payload)
assert attrs['cave.policy.id'] == 'targeted_test_repair_v3'
assert attrs['cave.policy.version'] == '7'
assert attrs['cave.policy.decision'] == 'execute'
assert attrs['cave.policy.reason'] == 'applied'
assert attrs['cave.policy.signed'] is True
assert attrs['cave.experiment.id'] == 'exp-1'
assert attrs['cave.experiment.arm'] == 'candidate'
assert attrs['cave.experiment.propensity'] == 0.9
assert not any(('saving' in key or 'usd' in key or 'verified' in key for key in attrs))
```

**Test: TestTenantPolicyRequiresExactOrganizationEquality** (complexity: 1.00)

```go
base := tenantTableSchema{
		name:                  "spans",
		rowSecurity:           true,
		forceRowSecurity:      true,
		policyExists:          true,
		policyPermissive:      true,
		policyCommand:         "*",
		policyAppliesToPublic: true,
		policyUsingExpression: `(organization_id = (current_setting('app.current_organization_id'::text, true))::uuid)`,
		policyCheckExpression: `(organization_id = (current_setting('app.current_organization_id'::text, true))::uuid)`,
	}
```

**Workflow: test record span maps genai attributes and ids** (complexity: 1.00)

```python
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

**Workflow: tool_search works without optional context and max_tools.** (complexity: 1.00)

```python
'tool_search works without optional context and max_tools.'
mock_response = {'tools': [], 'sent_schema_tokens': 0, 'full_schema_tokens': 100, 'deferred_count': 3, 'method': 'lexical-hit-rate'}
captured_bodies: list[dict] = []

def fake_urlopen(req, timeout):
    captured_bodies.append(json.loads(req.data))
    return _fake_urlopen(mock_response)
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    cave = Cave(api_key='cave_live_test_key', base_url='http://localhost:8787', agent='test-agent')
    result = cave.tool_search([], query='anything')
body = captured_bodies[0]
assert 'context' not in body
assert 'max_tools' not in body
assert 'session_id' not in body
assert result.reduction_pct == 100.0
```

*See `references/test_examples/` for all extracted examples*

## 📖 Project Documentation

*Extracted from markdown files in the project (C3.9)*

**Total Documentation Files:** 157
**Categories:** 6

### Overview

- **AGENTS**: @./skills/caveman/SKILL.md @./skills/caveman-commit/SKILL.md @./skills/caveman-review/SKILL.md @./sk...
- **Caveman 2 is here. The skill is untouched and still MIT.**: **Caveman 2 is here. The skill is untouched and still MIT.**
- **CLAUDE.md — caveman**: **CLAUDE.md — caveman**
- **GEMINI**: @./skills/caveman/SKILL.md @./skills/caveman-commit/SKILL.md @./skills/caveman-review/SKILL.md @./sk...
- **Install caveman**: **Install caveman**
- *...and 3 more*

### Community

- **Contributor Covenant Code of Conduct**: **Contributor Covenant Code of Conduct**

### Contributing

- **Contributing to Caveman**: **Contributing to Caveman**

### Other

- **public/agents — the agent-profile registry (`caveman wrap` data)**: **public/agents — the agent-profile registry (`caveman wrap` data)**
- **public/agents — the agent-profile registry (`caveman wrap` data)**: **public/agents — the agent-profile registry (`caveman wrap` data)**
- **cavecrew-builder**: Sections: Scope, Workflow, Output (receipt), Refusals (terminal lines), Auto-clarity
- **cavecrew-investigator**: Sections: Job, Output, Tools, Refusals, Auto-clarity
- **cavecrew-reviewer**: Sections: Severity, Output, Boundaries, Tools, Auto-clarity
- *...and 139 more*

### Security

- **Security and privacy**: **Security and privacy**

### Templates

- **bug_report**: --- name: Bug report about: Caveman speak wrong or break labels: bug ---
- **feature_request**: --- name: Feature request about: Make caveman better labels: enhancement ---

*See `references/documentation/` for all project documentation*

## 📚 Available References

This skill includes detailed reference documentation:

- **API Reference**: `references/api_reference/` - Complete API documentation
- **Dependencies**: `references/dependencies/` - Dependency graph and analysis
- **Patterns**: `references/patterns/` - Detected design patterns
- **Examples**: `references/test_examples/` - Usage examples from tests
- **Configuration**: `references/config_patterns/` - Configuration patterns
- **Documentation**: `references/documentation/` - Project documentation

---

**Generated by Skill Seeker** | Codebase Analyzer with C3.x Analysis
