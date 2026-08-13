# Test Example Extraction Report

**Total Examples**: 285  
**High Value Examples** (confidence > 0.7): 153  
**Average Complexity**: 0.32  

## Examples by Category

- **config**: 2
- **instantiation**: 217
- **method_call**: 33
- **workflow**: 33

## Examples by Language

- **Go**: 127
- **JavaScript**: 5
- **Python**: 153

## Extracted Examples

### test_context_pack_maps_wire_and_exact_deferred_ids

**Category**: workflow  
**Description**: Workflow: test context pack maps wire and exact deferred ids  
**Expected**: assert result.basis == 'inferred'  
**Confidence**: 0.90  
**Tags**: mock, workflow, integration  

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

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_context_pack.py:28*

### test_python_client_propagates_process_and_json_failures

**Category**: workflow  
**Description**: Workflow: test python client propagates process and json failures  
**Confidence**: 0.90  
**Tags**: mock, workflow, integration  

```python
# Setup
# Fixtures: monkeypatch

def process_failure(*_args: object, **_kwargs: object) -> SimpleNamespace:
    raise subprocess.CalledProcessError(17, ['cavemem'])
monkeypatch.setattr(cavemem.subprocess, 'run', process_failure)
with pytest.raises(subprocess.CalledProcessError):
    cavemem.remember('failure')
monkeypatch.setattr(cavemem.subprocess, 'run', lambda *_args, **_kwargs: SimpleNamespace(stdout='not json'))
with pytest.raises(json.JSONDecodeError):
    cavemem.remember('invalid')
```

*Source: /tmp/caveman-build/caveman/mem/py/tests/test_cavemem.py:64*

### test_chained_independent_modes_keep_original_prev

**Category**: workflow  
**Description**: Workflow: test chained independent modes keep original prev  
**Expected**: self.assertEqual(self.flag_value(), 'wenyan-ultra')  
**Confidence**: 0.90  
**Tags**: unittest, workflow, integration  

```python
# Setup
self._tmp = tempfile.TemporaryDirectory(prefix='caveman-tracker-')
self.claude_dir = Path(self._tmp.name) / '.claude'
self.claude_dir.mkdir(parents=True)
self.flag = self.claude_dir / '.caveman-active'
self.prev = self.claude_dir / '.caveman-active.prev'

self.flag.write_text('wenyan-ultra')
self.send('/caveman-commit')
self.send('/caveman-review')
self.assertEqual(self.flag_value(), 'review')
self.send('ordinary follow-up question')
self.assertEqual(self.flag_value(), 'wenyan-ultra')
```

*Source: /tmp/caveman-build/caveman/tests/test_mode_tracker.py:163*

### test_chained_independent_modes_keep_original_prev

**Category**: workflow  
**Description**: Workflow: test chained independent modes keep original prev  
**Expected**: self.assertEqual(self.flag_value(), 'wenyan-ultra')  
**Confidence**: 0.90  
**Tags**: unittest, workflow, integration  

```python
self.flag.write_text('wenyan-ultra')
self.send('/caveman-commit')
self.send('/caveman-review')
self.assertEqual(self.flag_value(), 'review')
self.send('ordinary follow-up question')
self.assertEqual(self.flag_value(), 'wenyan-ultra')
```

*Source: /tmp/caveman-build/caveman/tests/test_mode_tracker.py:163*

### test_price_affecting_keys_match_the_go_source_of_truth

**Category**: workflow  
**Description**: Workflow: test price affecting keys match the go source of truth  
**Expected**: self.assertEqual(sorted(go_keys), sorted(validator.PRICE_AFFECTING_CAPABILITY_KEYS), 'the Go and Python price-affecting capability lists have drifted; a key pinned on one side but not the other can move money the catalog_version in a signed receipt does not attest')  
**Confidence**: 0.90  
**Tags**: unittest, workflow, integration  

```python
go_source = (MODULE_PATH.parents[1] / 'platform' / 'catalog' / 'catalog.go').read_text(encoding='utf-8')
block = re.search('var PriceAffectingCapabilities = \\[\\]string\\{(.*?)\\n\\}', go_source, re.S)
self.assertIsNotNone(block, 'PriceAffectingCapabilities not found in catalog.go')
body = block.group(1)
go_keys = re.findall('"([^"]+)"', body)
for name in re.findall('^\\s*([A-Z]\\w+),\\s*$', body, re.M):
    const = re.search(f'{name}\\s*=\\s*"([^"]+)"', go_source)
    self.assertIsNotNone(const, f'could not resolve Go const {name}')
    go_keys.append(const.group(1))
self.assertEqual(sorted(go_keys), sorted(validator.PRICE_AFFECTING_CAPABILITY_KEYS), 'the Go and Python price-affecting capability lists have drifted; a key pinned on one side but not the other can move money the catalog_version in a signed receipt does not attest')
```

*Source: /tmp/caveman-build/caveman/shared/provider-catalog/tests/test_validate_catalog.py:43*

### test_price_multiplier_is_inside_the_snapshot_identity

**Category**: workflow  
**Description**: Workflow: test price multiplier is inside the snapshot identity  
**Expected**: self.assertNotEqual(validator.pricing_identity(base), validator.pricing_identity(without))  
**Confidence**: 0.90  
**Tags**: unittest, workflow, integration  

```python
base = {'provider': 'openai', 'model': 'gpt-5.5', 'region': 'global', 'currency': 'USD', 'pricing': {'input_per_million': 5, 'output_per_million': 30}, 'capabilities': {'regional_processing_multiplier': 1.1, 'vision': True}, 'sources': ['https://example.com/pricing'], 'verified_at': '2026-07-26T00:00:00Z'}
tampered = {**base, 'capabilities': {**base['capabilities'], 'regional_processing_multiplier': 1.95}}
self.assertNotEqual(validator.pricing_identity(base), validator.pricing_identity(tampered), 'a price multiplier escaped the identity the immutable snapshot pins')
capability_edit = {**base, 'capabilities': {**base['capabilities'], 'vision': False, 'tools': True}}
self.assertEqual(validator.pricing_identity(base), validator.pricing_identity(capability_edit))
without = {**base, 'capabilities': {'vision': True}}
self.assertNotEqual(validator.pricing_identity(base), validator.pricing_identity(without))
```

*Source: /tmp/caveman-build/caveman/shared/provider-catalog/tests/test_validate_catalog.py:71*

### test_price_affecting_keys_match_the_go_source_of_truth

**Category**: workflow  
**Description**: Workflow: test price affecting keys match the go source of truth  
**Expected**: self.assertEqual(sorted(go_keys), sorted(validator.PRICE_AFFECTING_CAPABILITY_KEYS), 'the Go and Python price-affecting capability lists have drifted; a key pinned on one side but not the other can move money the catalog_version in a signed receipt does not attest')  
**Confidence**: 0.90  
**Tags**: unittest, workflow, integration  

```python
go_source = (MODULE_PATH.parents[1] / 'platform' / 'catalog' / 'catalog.go').read_text(encoding='utf-8')
block = re.search('var PriceAffectingCapabilities = \\[\\]string\\{(.*?)\\n\\}', go_source, re.S)
self.assertIsNotNone(block, 'PriceAffectingCapabilities not found in catalog.go')
body = block.group(1)
go_keys = re.findall('"([^"]+)"', body)
for name in re.findall('^\\s*([A-Z]\\w+),\\s*$', body, re.M):
    const = re.search(f'{name}\\s*=\\s*"([^"]+)"', go_source)
    self.assertIsNotNone(const, f'could not resolve Go const {name}')
    go_keys.append(const.group(1))
self.assertEqual(sorted(go_keys), sorted(validator.PRICE_AFFECTING_CAPABILITY_KEYS), 'the Go and Python price-affecting capability lists have drifted; a key pinned on one side but not the other can move money the catalog_version in a signed receipt does not attest')
```

*Source: /tmp/caveman-build/caveman/shared/provider-catalog/tests/test_validate_catalog.py:43*

### test_price_multiplier_is_inside_the_snapshot_identity

**Category**: workflow  
**Description**: Workflow: test price multiplier is inside the snapshot identity  
**Expected**: self.assertNotEqual(validator.pricing_identity(base), validator.pricing_identity(without))  
**Confidence**: 0.90  
**Tags**: unittest, workflow, integration  

```python
base = {'provider': 'openai', 'model': 'gpt-5.5', 'region': 'global', 'currency': 'USD', 'pricing': {'input_per_million': 5, 'output_per_million': 30}, 'capabilities': {'regional_processing_multiplier': 1.1, 'vision': True}, 'sources': ['https://example.com/pricing'], 'verified_at': '2026-07-26T00:00:00Z'}
tampered = {**base, 'capabilities': {**base['capabilities'], 'regional_processing_multiplier': 1.95}}
self.assertNotEqual(validator.pricing_identity(base), validator.pricing_identity(tampered), 'a price multiplier escaped the identity the immutable snapshot pins')
capability_edit = {**base, 'capabilities': {**base['capabilities'], 'vision': False, 'tools': True}}
self.assertEqual(validator.pricing_identity(base), validator.pricing_identity(capability_edit))
without = {**base, 'capabilities': {'vision': True}}
self.assertNotEqual(validator.pricing_identity(base), validator.pricing_identity(without))
```

*Source: /tmp/caveman-build/caveman/shared/provider-catalog/tests/test_validate_catalog.py:71*

### test_parity

**Category**: workflow  
**Description**: Workflow: test parity  
**Expected**: assert actual == expected, f"{op['name']}: result"  
**Confidence**: 0.90  
**Tags**: pytest, mock, workflow, integration  

```python
# Setup
# Fixtures: op

handler = HANDLERS.get(op['name'])
assert handler is not None, f'''no Python parity handler for operation "{op['name']}" — the SDK is missing this capability'''
captured: list[dict[str, Any]] = []

def fake_urlopen(req: Any, timeout: float) -> MagicMock:
    captured.append({'url': req.full_url, 'method': req.get_method(), 'headers': {k.lower(): v for k, v in dict(req.headers).items()}, 'body': json.loads(req.data) if req.data else None})
    if op.get('transport') == 'error':
        raise urllib.error.URLError('simulated transport error')
    return _fake_response(op.get('response', {}))
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    actual = handler(_make_cave(), op['input'])
wire = op['expect'].get('wire')
if wire:
    assert len(captured) == 1, f"{op['name']}: expected exactly one wire request, got {len(captured)}"
    req = captured[0]
    base = CONFIG['control_url'] if wire.get('base') == 'control' else CONFIG['base_url']
    assert req['url'] == base + wire['path'], f"{op['name']}: url"
    assert req['method'] == wire['method'], f"{op['name']}: method"
    exp_headers = FIXTURES[wire['headers']] if isinstance(wire['headers'], str) else wire['headers']
    assert req['headers'] == exp_headers, f"{op['name']}: headers"
    if 'body' in wire:
        assert req['body'] == wire['body'], f"{op['name']}: body"
    elif 'body_keys' in wire:
        assert sorted((req['body'] or {}).keys()) == sorted(wire['body_keys']), f"{op['name']}: body_keys"
else:
    assert len(captured) == 0, f"{op['name']}: expected no wire request"
expected = op['response'] if op['expect'].get('result_from') == 'response' else op['expect'].get('result')
assert actual == expected, f"{op['name']}: result"
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_parity.py:357*

### test_synchronous_and_asynchronous_failures_emit_error_without_exception_leakage

**Category**: workflow  
**Description**: Workflow: test synchronous and asynchronous failures emit error without exception leakage  
**Expected**: assert 'traceback' not in wire  
**Confidence**: 0.90  
**Tags**: mock, workflow, integration  

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

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_tool_events.py:77*

### test_telemetry_failure_never_changes_successful_return_or_original_throw

**Category**: workflow  
**Description**: Workflow: test telemetry failure never changes successful return or original throw  
**Expected**: assert original.args[0] not in json.dumps(captured[0]['body'])  
**Confidence**: 0.90  
**Tags**: mock, workflow, integration  

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

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_tool_events.py:129*

### test_sequence_follows_start_order_when_async_completions_reverse

**Category**: workflow  
**Description**: Workflow: test sequence follows start order when async completions reverse  
**Expected**: _assert_event(captured[1], name='first', outcome='ok', sequence=1)  
**Confidence**: 0.90  
**Tags**: mock, workflow, integration  

```python
captured, fake_urlopen = _capture()

async def run() -> None:
    first_gate = asyncio.Event()

    async def first() -> str:
        await first_gate.wait()
        return 'first-result'

    async def second() -> str:
        return 'second-result'
    with patch('urllib.request.urlopen', side_effect=fake_urlopen):
        with _cave().trace(trace_id=TRACE_ID, span_id=SPAN_ID) as trace:
            first_call = trace.tool('first', {}, first)
            second_call = trace.tool('second', {}, second)
            assert await second_call == 'second-result'
            first_gate.set()
            assert await first_call == 'first-result'
asyncio.run(run())
assert len(captured) == 2
_assert_event(captured[0], name='second', outcome='ok', sequence=2)
_assert_event(captured[1], name='first', outcome='ok', sequence=1)
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_tool_events.py:152*

### test_each_trace_owns_independent_sequence

**Category**: workflow  
**Description**: Workflow: test each trace owns independent sequence  
**Expected**: assert [request['body']['sequence'] for request in captured] == [1, 1]  
**Confidence**: 0.90  
**Tags**: mock, workflow, integration  

```python
captured, fake_urlopen = _capture()
cave = _cave()
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    with cave.trace(trace_id=TRACE_ID, span_id=SPAN_ID) as first:
        first.tool('one', {}, lambda: 1)
    with cave.trace(trace_id=TRACE_ID, span_id=SPAN_ID) as second:
        second.tool('two', {}, lambda: 2)
assert [request['body']['sequence'] for request in captured] == [1, 1]
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_tool_events.py:179*

### test_sequence_increment_is_thread_safe

**Category**: workflow  
**Description**: Workflow: test sequence increment is thread safe  
**Expected**: assert sorted((request['body']['sequence'] for request in captured)) == list(range(1, 65))  
**Confidence**: 0.90  
**Tags**: mock, workflow, integration  

```python
captured, fake_urlopen = _capture()
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    with _cave().trace(trace_id=TRACE_ID, span_id=SPAN_ID) as trace:
        with ThreadPoolExecutor(max_workers=8) as executor:
            results = list(executor.map(lambda index: trace.tool(f'tool-{index}', {}, lambda: index), range(64)))
assert results == list(range(64))
assert sorted((request['body']['sequence'] for request in captured)) == list(range(1, 65))
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_tool_events.py:190*

### test_signature_case_tampered_bundle_rejected

**Category**: workflow  
**Description**: Workflow: test signature case tampered bundle rejected  
**Expected**: assert (decision.decision, decision.reason) == ('baseline', 'policy_unavailable')  
**Confidence**: 0.90  
**Tags**: workflow, integration  

```python
case = _signature_case('tampered_bundle_rejected')
client = _make_cave().runtime_policy(public_key=case['pinned_public_key'])
result = _refresh_with(client, _signed_payload(TAMPERED_BUNDLE))
assert result.ok is False
assert result.error == 'signature_invalid'
assert client.state().has_bundle is False
decision = client.decide('fix_failing_test_with_stacktrace', 'task-a', {})
assert (decision.decision, decision.reason) == ('baseline', 'policy_unavailable')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_runtime_policy.py:182*

### test_tofu_pins_the_embedded_key_and_refuses_a_later_unsigned_bundle

**Category**: workflow  
**Description**: Workflow: test tofu pins the embedded key and refuses a later unsigned bundle  
**Expected**: assert client.state().kill is False  
**Confidence**: 0.90  
**Tags**: workflow, integration  

```python
client = _make_cave().runtime_policy()
assert _refresh_with(client, _signed_payload()).signed is True
later_unsigned = json.loads(KILL_BUNDLE)
later_unsigned['sequence'] = 99
result = _refresh_with(client, {'bundle': json.dumps(later_unsigned), 'signature': None, 'public_key': None})
assert result.ok is False
assert result.error == 'unsigned_rejected'
assert client.state().kill is False
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_runtime_policy.py:257*

### test_tofu_pins_as_soon_as_a_signature_verifies_even_if_the_bundle_is_rejected

**Category**: workflow  
**Description**: Workflow: The pin is stored the moment the signature verifies — BEFORE the schema
and sequence checks. A validly signed bundle this client refuses on its
contents has still proven which key the server signs with, so it must not
leave the client downgradeable to unsigned.  
**Expected**: assert client.state().signed is True  
**Confidence**: 0.90  
**Tags**: workflow, integration  

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

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_runtime_policy.py:269*

### test_assignment_vector_arm_and_propensity

**Category**: workflow  
**Description**: Workflow: test assignment vector arm and propensity  
**Expected**: assert decision.propensity == vector['expected_propensity']  
**Confidence**: 0.90  
**Tags**: pytest, workflow, integration  

```python
# Setup
# Fixtures: vector

project_id, experiment_id, unit_key = vector['keys']
bundle = {'schema_version': 'caveman.runtime-policy.v1', 'project_id': project_id, 'policy_version': 1, 'sequence': 1, 'issued_at': '2026-08-08T12:00:00Z', 'refresh_seconds': 60, 'kill': False, 'runtime_policies': [{'id': 'vector_policy', 'task_family': 'vector_family', 'execute': {'workflow': 'vector_execute'}, 'fallback': {'workflow': 'vector_fallback'}, 'experiment': {'id': experiment_id, 'holdout_frac': vector['holdout_frac'], 'arms': vector['arms']}}], 'experiments': []}
client = _make_cave().runtime_policy()
assert _refresh_with(client, {'bundle': json.dumps(bundle)}).ok is True
decision = client.decide('vector_family', unit_key)
if unit_key == '':
    assert decision.reason == 'no_unit_key'
    assert decision.arm is None
    return
assert decision.arm == vector['expected_arm']
assert decision.propensity == vector['expected_propensity']
if vector['expected_arm'] == 'holdout':
    assert decision.decision == 'fallback'
    assert decision.workflow == 'vector_fallback'
else:
    assert decision.decision == 'execute'
    assert decision.workflow == 'vector_execute'
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_runtime_policy.py:314*

### test_weighted_arm_propensity_uses_the_fixtures_float_association

**Category**: workflow  
**Description**: Workflow: Propensity is ``(1 - holdout) * (weight / total)`` in EXACTLY that
association. ``((1 - holdout) * weight) / total`` is a different float
expression; the fixture's weighted ``exp-w`` vectors exist to catch it.  
**Expected**: assert diverged >= 1  
**Confidence**: 0.90  
**Tags**: workflow, integration  

```python
"Propensity is ``(1 - holdout) * (weight / total)`` in EXACTLY that\n    association. ``((1 - holdout) * weight) / total`` is a different float\n    expression; the fixture's weighted ``exp-w`` vectors exist to catch it."
weighted = [v for v in FIXTURES['assignment_vectors'] if v['keys'][1] == 'exp-w']
assert len(weighted) >= 3
diverged = 0
for vector in weighted:
    if vector['expected_arm'] == 'holdout':
        assert vector['expected_propensity'] == vector['holdout_frac']
        continue
    total = sum((arm['fraction'] for arm in vector['arms']))
    weight = next((arm['fraction'] for arm in vector['arms'] if arm['name'] == vector['expected_arm']))
    holdout = vector['holdout_frac']
    assert (1 - holdout) * (weight / total) == vector['expected_propensity']
    if (1 - holdout) * weight / total != vector['expected_propensity']:
        diverged += 1
assert diverged >= 1
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_runtime_policy.py:360*

### test_sequence_regression_is_rejected

**Category**: workflow  
**Description**: Workflow: test sequence regression is rejected  
**Expected**: assert client.state().policy_version == 7  
**Confidence**: 0.90  
**Tags**: workflow, integration  

```python
client = _client_holding(BUNDLE)
stale = json.loads(BUNDLE)
stale['sequence'] = 41
stale['policy_version'] = 6
result = _refresh_with(client, {'bundle': json.dumps(stale)})
assert result.ok is False
assert result.error == 'stale_sequence'
assert client.state().sequence == 42
assert client.state().policy_version == 7
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_runtime_policy.py:463*

### test_unknown_schema_version_is_rejected

**Category**: workflow  
**Description**: Workflow: test unknown schema version is rejected  
**Expected**: assert client.state().sequence == 42  
**Confidence**: 0.90  
**Tags**: workflow, integration  

```python
client = _client_holding(BUNDLE)
future = json.loads(BUNDLE)
future['schema_version'] = 'caveman.runtime-policy.v2'
future['sequence'] = 99
result = _refresh_with(client, {'bundle': json.dumps(future)})
assert result.ok is False
assert result.error == 'unknown_schema_version'
assert client.state().sequence == 42
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_runtime_policy.py:499*

### test_bundle_counters_accept_integer_valued_json_numbers_only

**Category**: workflow  
**Description**: Workflow: JSON has one number type: a publisher may emit 7 or 7.0 for the same
counter and the TypeScript mirror accepts both. Booleans and values beyond
JavaScript's safe integer range reject the bundle.  
**Expected**: assert client.state().has_bundle is False  
**Confidence**: 0.90  
**Tags**: workflow, integration  

```python
"JSON has one number type: a publisher may emit 7 or 7.0 for the same\n    counter and the TypeScript mirror accepts both. Booleans and values beyond\n    JavaScript's safe integer range reject the bundle."
bundle = _bundle_with_policies([], policy_version=7.0, sequence=42.0)
state = _client_holding(bundle).state()
assert state.policy_version == 7.0
assert state.sequence == 42.0
client = _make_cave().runtime_policy()
rejected = _refresh_with(client, {'bundle': _bundle_with_policies([], policy_version=True, sequence=10 ** 400)})
assert (rejected.ok, rejected.error) == (False, 'invalid_bundle_counter')
assert client.state().has_bundle is False
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_runtime_policy.py:796*

### test_fallback_workflow_may_be_the_customer_baseline

**Category**: workflow  
**Description**: Workflow: test fallback workflow may be the customer baseline  
**Expected**: assert (decision.decision, decision.reason, decision.workflow) == ('fallback', 'guards_failed', None)  
**Confidence**: 0.90  
**Tags**: workflow, integration  

```python
policy = {'id': 'p', 'task_family': 'f', 'applies_when': [{'field': 'x', 'op': 'eq', 'value': 1}], 'execute': {'workflow': 'w'}}
decision = _client_holding(_bundle_with_policies([policy])).decide('f', 'u', {'x': 2})
assert (decision.decision, decision.reason, decision.workflow) == ('fallback', 'guards_failed', None)
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_runtime_policy.py:832*

### test_decision_span_rides_the_existing_exporter

**Category**: workflow  
**Description**: Workflow: test decision span rides the existing exporter  
**Expected**: assert not any(('saving' in key or 'usd' in key or 'verified' in key for key in attrs))  
**Confidence**: 0.90  
**Tags**: workflow, integration  

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

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_runtime_policy.py:935*

### test_record_span_maps_genai_attributes_and_ids

**Category**: workflow  
**Description**: Workflow: test record span maps genai attributes and ids  
**Expected**: assert attrs['cave.workflow'] == 'invoice-flow'  
**Confidence**: 0.90  
**Tags**: workflow, integration  

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

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_exporter.py:44*

### test_custom_service_name

**Category**: workflow  
**Description**: Workflow: test custom service name  
**Expected**: assert res_attrs['service.name'] == 'custom-svc'  
**Confidence**: 0.90  
**Tags**: workflow, integration  

```python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
exp = cave.exporter(service_name='custom-svc')
exp.record_span('op')
payload = exp.build_payload()
res_attrs = _attr_map(payload['resourceSpans'][0]['resource']['attributes'])
assert res_attrs['service.name'] == 'custom-svc'
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_exporter.py:275*

### test_cave_retry_loop_breaker_default_fires_once

**Category**: workflow  
**Description**: Workflow: test cave retry loop breaker default fires once  
**Expected**: assert fired == 1  
**Confidence**: 0.90  
**Tags**: workflow, integration  

```python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
breaker = cave.retry_loop_breaker()
fired = 0
for _ in range(10):
    try:
        breaker.record('loop_tool', {'same': True})
    except RetryLoopError:
        fired += 1
        break
assert fired == 1
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_structural.py:29*

### test_assemble_keeps_prefix_bytes_identical_across_ten_volatile_turns

**Category**: workflow  
**Description**: Workflow: test assemble keeps prefix bytes identical across ten volatile turns  
**Expected**: assert len(set(hashes)) == 1  
**Confidence**: 0.90  
**Tags**: workflow, integration  

```python
cave = _cave('assembly-ten-turn')
hashes: list[str] = []
for turn in range(10):
    built = cave.assemble(_options(session_id='ten-turn', turn=turn))
    prefix = {'model': built.request['model'], 'system': built.request['system'], 'tools': built.request['tools']}
    digest = hashlib.sha256(_canonical(prefix).encode()).hexdigest()
    hashes.append(digest)
    assert built.prefix_hash == digest
    assert not _contains_key(built.request, 'cache_control')
    assert built.breakpoints == []
    assert built.basis == 'inferred'
    assert built.token_basis == 'estimated_bytes_div_4'
    assert built.volatile_below_breakpoint is True
assert len(set(hashes)) == 1
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_assembly.py:88*

### test_openai_self_emits_key_and_unknown_provider_orders_only

**Category**: workflow  
**Description**: Workflow: test openai self emits key and unknown provider orders only  
**Expected**: assert unknown.breakpoints == []  
**Confidence**: 0.90  
**Tags**: workflow, integration  

```python
cave = _cave('assembly-other-providers')
openai = cave.assemble(_options(provider='openai', session_id='openai-self', turn=1, emit_cache_hints='self'))
assert openai.request['prompt_cache_key'] == openai.prefix_hash[:32]
assert openai.breakpoints == ['prompt_cache_key']
assert [message['role'] for message in openai.request['messages']] == ['system', 'user', 'user']
source = _slots(1)
unknown = cave.assemble(AssembleOptions(provider='other', model='other-model', session_id='unknown', slots=[source[3], source[1], source[2]], emit_cache_hints='self'))
assert [slot['stability'] for slot in unknown.request['slots']] == ['stable', 'session', 'volatile']
assert unknown.breakpoints == []
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_assembly.py:167*

### test_tool_search_minimal_args

**Category**: workflow  
**Description**: Workflow: tool_search works without optional context and max_tools.  
**Expected**: assert result.reduction_pct == 100.0  
**Confidence**: 0.90  
**Tags**: mock, workflow, integration  

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

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_sdk.py:172*

### test_tools_handle_applies_default_cap_and_allows_override

**Category**: workflow  
**Description**: Workflow: test tools handle applies default cap and allows override  
**Expected**: assert bodies[0]['tools'][0]['idempotent'] is True  
**Confidence**: 0.90  
**Tags**: mock, workflow, integration  

```python
mock_response = {'tools': [], 'sent_schema_tokens': 0, 'full_schema_tokens': 10, 'deferred_count': 1, 'method': 'bm25'}
bodies: list[dict] = []

def fake_urlopen(req, timeout):
    bodies.append(json.loads(req.data))
    return _fake_urlopen(mock_response)
tool = CaveTool(name='safe', description='safe', input_schema={}, read_only=True, idempotent=True)
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
    handle = cave.tools([tool], strategy='deferred', max_loaded_tools=2)
    handle.search('first')
    handle.search('second', max_tools=1)
    with pytest.raises(ValueError, match='positive integer'):
        cave.tools([tool], max_loaded_tools=0)
assert bodies[0]['max_tools'] == 2
assert bodies[1]['max_tools'] == 1
assert bodies[0]['tools'][0]['idempotent'] is True
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_sdk.py:193*

### test_tools_handle_validates_deferred_counts_and_never_hides_mandatory_tools

**Category**: workflow  
**Description**: Workflow: test tools handle validates deferred counts and never hides mandatory tools  
**Expected**: assert [tool.name for tool in handle.initial] == ['always', 'lazy1']  
**Confidence**: 0.90  
**Tags**: workflow, integration  

```python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
always = CaveTool(name='always', description='mandatory', input_schema={}, read_only=True, idempotent=True, always_load=True)
lazy_one = CaveTool(name='lazy1', description='lazy', input_schema={}, read_only=True, idempotent=True)
lazy_two = CaveTool(name='lazy2', description='lazy', input_schema={}, read_only=True, idempotent=True)
handle = cave.tools([always, lazy_one, lazy_two], strategy='deferred', initial_tool_count=8, max_loaded_tools=2)
assert [tool.name for tool in handle.initial] == ['always', 'lazy1']
with pytest.raises(ValueError, match='strategy'):
    cave.tools([always], strategy='unknown')
with pytest.raises(ValueError, match='non-negative integer'):
    cave.tools([always], initial_tool_count=-1)
with pytest.raises(ValueError, match='positive integer'):
    cave.tool_search([always], 'query', max_tools=0)
always_two = CaveTool(name='always2', description='mandatory', input_schema={}, read_only=True, idempotent=True, always_load=True)
with pytest.raises(ValueError, match='always_load tool count'):
    cave.tools([always, always_two], strategy='deferred', max_loaded_tools=1)
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_sdk.py:215*

### test_tool_search_uses_custom_workflow_header

**Category**: workflow  
**Description**: Workflow: tool_search sends the workflow in the x-cave-workflow header.  
**Expected**: assert captured_headers[0]['X-cave-workflow'] == 'custom-workflow'  
**Confidence**: 0.90  
**Tags**: mock, workflow, integration  

```python
'tool_search sends the workflow in the x-cave-workflow header.'
mock_response = {'tools': [], 'sent_schema_tokens': 50, 'full_schema_tokens': 200, 'deferred_count': 2, 'method': 'lexical-hit-rate'}
captured_headers: list[dict] = []

def fake_urlopen(req, timeout):
    captured_headers.append(dict(req.headers))
    return _fake_urlopen(mock_response)
with patch('urllib.request.urlopen', side_effect=fake_urlopen):
    cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a', default_workflow='my-workflow')
    cave.tool_search([], query='test', workflow='custom-workflow')
assert captured_headers[0]['X-cave-workflow'] == 'custom-workflow'
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_sdk.py:233*

### test_python_client_forwards_every_command

**Category**: method_call  
**Description**: test python client forwards every command  
**Expected**: assert cavemem.remember('raw memory')['args'] == ['remember', '--stdin']  
**Confidence**: 0.85  
**Tags**: mock  

```python
# Setup
# Fixtures: monkeypatch

monkeypatch.setattr(cavemem.subprocess, 'run', fake_run)
assert cavemem.remember('raw memory')['args'] == ['remember', '--stdin']
```

*Source: /tmp/caveman-build/caveman/mem/py/tests/test_cavemem.py:25*

### test_python_client_uses_path_default

**Category**: method_call  
**Description**: test python client uses path default  
**Expected**: assert cavemem._binary() == 'cavemem'  
**Confidence**: 0.85  
**Tags**: mock  

```python
# Setup
# Fixtures: monkeypatch

monkeypatch.delenv('CAVEMEM_BIN', raising=False)
assert cavemem._binary() == 'cavemem'
```

*Source: /tmp/caveman-build/caveman/mem/py/tests/test_cavemem.py:60*

### test_turn_caveman_mode_off_deactivates

**Category**: method_call  
**Description**: test turn caveman mode off deactivates  
**Expected**: self.assertIsNone(self.flag_value())  
**Confidence**: 0.85  
**Tags**: unittest  

```python
# Setup
self._tmp = tempfile.TemporaryDirectory(prefix='caveman-tracker-')
self.claude_dir = Path(self._tmp.name) / '.claude'
self.claude_dir.mkdir(parents=True)
self.flag = self.claude_dir / '.caveman-active'
self.prev = self.claude_dir / '.caveman-active.prev'

self.send('turn caveman mode off')
self.assertIsNone(self.flag_value())
```

*Source: /tmp/caveman-build/caveman/tests/test_mode_tracker.py:62*

### test_turn_caveman_off_deactivates

**Category**: method_call  
**Description**: test turn caveman off deactivates  
**Expected**: self.assertIsNone(self.flag_value())  
**Confidence**: 0.85  
**Tags**: unittest  

```python
# Setup
self._tmp = tempfile.TemporaryDirectory(prefix='caveman-tracker-')
self.claude_dir = Path(self._tmp.name) / '.claude'
self.claude_dir.mkdir(parents=True)
self.flag = self.claude_dir / '.caveman-active'
self.prev = self.claude_dir / '.caveman-active.prev'

self.send('turn caveman off')
self.assertIsNone(self.flag_value())
```

*Source: /tmp/caveman-build/caveman/tests/test_mode_tracker.py:67*

### test_turn_off_caveman_deactivates

**Category**: method_call  
**Description**: test turn off caveman deactivates  
**Expected**: self.assertIsNone(self.flag_value())  
**Confidence**: 0.85  
**Tags**: unittest  

```python
# Setup
self._tmp = tempfile.TemporaryDirectory(prefix='caveman-tracker-')
self.claude_dir = Path(self._tmp.name) / '.claude'
self.claude_dir.mkdir(parents=True)
self.flag = self.claude_dir / '.caveman-active'
self.prev = self.claude_dir / '.caveman-active.prev'

self.send('turn off caveman')
self.assertIsNone(self.flag_value())
```

*Source: /tmp/caveman-build/caveman/tests/test_mode_tracker.py:72*

### test_stop_caveman_multiline_deactivates

**Category**: method_call  
**Description**: test stop caveman multiline deactivates  
**Expected**: self.assertIsNone(self.flag_value())  
**Confidence**: 0.85  
**Tags**: unittest  

```python
# Setup
self._tmp = tempfile.TemporaryDirectory(prefix='caveman-tracker-')
self.claude_dir = Path(self._tmp.name) / '.claude'
self.claude_dir.mkdir(parents=True)
self.flag = self.claude_dir / '.caveman-active'
self.prev = self.claude_dir / '.caveman-active.prev'

self.send('stop\ncaveman')
self.assertIsNone(self.flag_value())
```

*Source: /tmp/caveman-build/caveman/tests/test_mode_tracker.py:78*

### test_normal_mode_command_deactivates

**Category**: method_call  
**Description**: test normal mode command deactivates  
**Expected**: self.assertIsNone(self.flag_value())  
**Confidence**: 0.85  
**Tags**: unittest  

```python
# Setup
self._tmp = tempfile.TemporaryDirectory(prefix='caveman-tracker-')
self.claude_dir = Path(self._tmp.name) / '.claude'
self.claude_dir.mkdir(parents=True)
self.flag = self.claude_dir / '.caveman-active'
self.prev = self.claude_dir / '.caveman-active.prev'

self.send('normal mode')
self.assertIsNone(self.flag_value())
```

*Source: /tmp/caveman-build/caveman/tests/test_mode_tracker.py:83*

### test_back_to_normal_mode_deactivates

**Category**: method_call  
**Description**: test back to normal mode deactivates  
**Expected**: self.assertIsNone(self.flag_value())  
**Confidence**: 0.85  
**Tags**: unittest  

```python
# Setup
self._tmp = tempfile.TemporaryDirectory(prefix='caveman-tracker-')
self.claude_dir = Path(self._tmp.name) / '.claude'
self.claude_dir.mkdir(parents=True)
self.flag = self.claude_dir / '.caveman-active'
self.prev = self.claude_dir / '.caveman-active.prev'

self.send('back to normal mode please')
self.assertIsNone(self.flag_value())
```

*Source: /tmp/caveman-build/caveman/tests/test_mode_tracker.py:88*

### test_vim_normal_mode_does_not_deactivate

**Category**: method_call  
**Description**: test vim normal mode does not deactivate  
**Expected**: self.assertEqual(self.flag_value(), 'full')  
**Confidence**: 0.85  
**Tags**: unittest  

```python
# Setup
self._tmp = tempfile.TemporaryDirectory(prefix='caveman-tracker-')
self.claude_dir = Path(self._tmp.name) / '.claude'
self.claude_dir.mkdir(parents=True)
self.flag = self.claude_dir / '.caveman-active'
self.prev = self.claude_dir / '.caveman-active.prev'

self.send('how do I exit vim normal mode')
self.assertEqual(self.flag_value(), 'full')
```

*Source: /tmp/caveman-build/caveman/tests/test_mode_tracker.py:93*

### test_enable_caveman_with_stop_elsewhere_activates

**Category**: method_call  
**Description**: test enable caveman with stop elsewhere activates  
**Expected**: self.assertEqual(self.flag_value(), 'full')  
**Confidence**: 0.85  
**Tags**: unittest  

```python
# Setup
self._tmp = tempfile.TemporaryDirectory(prefix='caveman-tracker-')
self.claude_dir = Path(self._tmp.name) / '.claude'
self.claude_dir.mkdir(parents=True)
self.flag = self.claude_dir / '.caveman-active'
self.prev = self.claude_dir / '.caveman-active.prev'

self.send('enable caveman and stop apologizing')
self.assertEqual(self.flag_value(), 'full')
```

*Source: /tmp/caveman-build/caveman/tests/test_mode_tracker.py:102*

### test_review_marker_matches_the_sync_script

**Category**: method_call  
**Description**: test review marker matches the sync script  
**Expected**: self.assertTrue(declared.group(1).startswith(validator.REVIEW_MARKER), "the sync script's marker no longer starts with the literal this validator refuses; a renamed marker would merge unreviewed")  
**Confidence**: 0.85  
**Tags**: unittest  

```python
self.assertIsNotNone(declared, 'REVIEW_MARKER_PREFIX not found in the sync script')
self.assertTrue(declared.group(1).startswith(validator.REVIEW_MARKER), "the sync script's marker no longer starts with the literal this validator refuses; a renamed marker would merge unreviewed")
```

*Source: /tmp/caveman-build/caveman/shared/provider-catalog/tests/test_validate_catalog.py:152*

### test_review_marker_matches_the_sync_script

**Category**: method_call  
**Description**: test review marker matches the sync script  
**Expected**: self.assertTrue(declared.group(1).startswith(validator.REVIEW_MARKER), "the sync script's marker no longer starts with the literal this validator refuses; a renamed marker would merge unreviewed")  
**Confidence**: 0.85  
**Tags**: unittest  

```python
self.assertIsNotNone(declared, 'REVIEW_MARKER_PREFIX not found in the sync script')
self.assertTrue(declared.group(1).startswith(validator.REVIEW_MARKER), "the sync script's marker no longer starts with the literal this validator refuses; a renamed marker would merge unreviewed")
```

*Source: /tmp/caveman-build/caveman/shared/provider-catalog/tests/test_validate_catalog.py:152*

### test_synchronous_and_asynchronous_failures_emit_error_without_exception_leakage

**Category**: method_call  
**Description**: test synchronous and asynchronous failures emit error without exception leakage  
**Expected**: assert sync_error.args[0] not in json.dumps(captured[0]['body'])  
**Confidence**: 0.85  
**Tags**: mock  

```python
_assert_event(captured[0], name='sync-danger', outcome='error', sequence=1)
assert sync_error.args[0] not in json.dumps(captured[0]['body'])
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_tool_events.py:89*

### test_cancellation_is_error_and_original_cancellation_propagates

**Category**: method_call  
**Description**: test cancellation is error and original cancellation propagates  
**Expected**: assert 'private-cancel-message' not in json.dumps(captured[0]['body'])  
**Confidence**: 0.85  
**Tags**: mock  

```python
_assert_event(captured[0], name='cancelled', outcome='error', sequence=1)
assert 'private-cancel-message' not in json.dumps(captured[0]['body'])
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_tool_events.py:125*

### test_telemetry_failure_never_changes_successful_return_or_original_throw

**Category**: method_call  
**Description**: test telemetry failure never changes successful return or original throw  
**Expected**: assert original.args[0] not in json.dumps(captured[0]['body'])  
**Confidence**: 0.85  
**Tags**: mock  

```python
_assert_event(captured[0], name='bad', outcome='error', sequence=1)
assert original.args[0] not in json.dumps(captured[0]['body'])
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_tool_events.py:148*

### test_sequence_follows_start_order_when_async_completions_reverse

**Category**: method_call  
**Description**: test sequence follows start order when async completions reverse  
**Expected**: assert len(captured) == 2  
**Confidence**: 0.85  
**Tags**: mock  

```python
asyncio.run(run())
assert len(captured) == 2
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_tool_events.py:173*

### test_sequence_follows_start_order_when_async_completions_reverse

**Category**: method_call  
**Description**: test sequence follows start order when async completions reverse  
**Expected**: _assert_event(captured[1], name='first', outcome='ok', sequence=1)  
**Confidence**: 0.85  
**Tags**: mock  

```python
_assert_event(captured[0], name='second', outcome='ok', sequence=2)
_assert_event(captured[1], name='first', outcome='ok', sequence=1)
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_tool_events.py:175*

### test_readme_has_one_replaceable_benchmark_region

**Category**: method_call  
**Description**: test readme has one replaceable benchmark region  
**Expected**: self.assertEqual(readme.count(BENCHMARK.BENCHMARK_END), 1)  
**Confidence**: 0.85  
**Tags**: unittest  

```python
self.assertEqual(readme.count(BENCHMARK.BENCHMARK_START), 1)
self.assertEqual(readme.count(BENCHMARK.BENCHMARK_END), 1)
```

*Source: /tmp/caveman-build/caveman/tests/test_benchmark_contract.py:17*

### test_readme_has_one_replaceable_benchmark_region

**Category**: method_call  
**Description**: test readme has one replaceable benchmark region  
**Expected**: self.assertLess(readme.index(BENCHMARK.BENCHMARK_START), readme.index(BENCHMARK.BENCHMARK_END))  
**Confidence**: 0.85  
**Tags**: unittest  

```python
self.assertEqual(readme.count(BENCHMARK.BENCHMARK_END), 1)
self.assertLess(readme.index(BENCHMARK.BENCHMARK_START), readme.index(BENCHMARK.BENCHMARK_END))
```

*Source: /tmp/caveman-build/caveman/tests/test_benchmark_contract.py:18*

### test_readme_publishes_no_uncommitted_output_percentage_or_accuracy

**Category**: method_call  
**Description**: test readme publishes no uncommitted output percentage or accuracy  
**Expected**: self.assertNotIn('technical accuracy    ', readme)  
**Confidence**: 0.85  
**Tags**: unittest  

```python
self.assertNotIn('65% average output', readme)
self.assertNotIn('technical accuracy    ', readme)
```

*Source: /tmp/caveman-build/caveman/tests/test_benchmark_contract.py:27*

### test_readme_has_one_replaceable_benchmark_region

**Category**: method_call  
**Description**: test readme has one replaceable benchmark region  
**Expected**: self.assertEqual(readme.count(BENCHMARK.BENCHMARK_END), 1)  
**Confidence**: 0.85  
**Tags**: unittest  

```python
self.assertEqual(readme.count(BENCHMARK.BENCHMARK_START), 1)
self.assertEqual(readme.count(BENCHMARK.BENCHMARK_END), 1)
```

*Source: /tmp/caveman-build/caveman/tests/test_benchmark_contract.py:17*

### test_readme_has_one_replaceable_benchmark_region

**Category**: method_call  
**Description**: test readme has one replaceable benchmark region  
**Expected**: self.assertLess(readme.index(BENCHMARK.BENCHMARK_START), readme.index(BENCHMARK.BENCHMARK_END))  
**Confidence**: 0.85  
**Tags**: unittest  

```python
self.assertEqual(readme.count(BENCHMARK.BENCHMARK_END), 1)
self.assertLess(readme.index(BENCHMARK.BENCHMARK_START), readme.index(BENCHMARK.BENCHMARK_END))
```

*Source: /tmp/caveman-build/caveman/tests/test_benchmark_contract.py:18*

### test_readme_publishes_no_uncommitted_output_percentage_or_accuracy

**Category**: method_call  
**Description**: test readme publishes no uncommitted output percentage or accuracy  
**Expected**: self.assertNotIn('technical accuracy    ', readme)  
**Confidence**: 0.85  
**Tags**: unittest  

```python
self.assertNotIn('65% average output', readme)
self.assertNotIn('technical accuracy    ', readme)
```

*Source: /tmp/caveman-build/caveman/tests/test_benchmark_contract.py:27*

### test_match

**Category**: method_call  
**Description**: test match  
**Expected**: self.assertTrue(result.is_valid)  
**Confidence**: 0.85  
**Tags**: unittest  

```python
validate_inline_codes('use `cmd` here', 'use `cmd` here', result)
self.assertTrue(result.is_valid)
```

*Source: /tmp/caveman-build/caveman/tests/test_validate_inline.py:59*

### test_lost

**Category**: method_call  
**Description**: test lost  
**Expected**: self.assertFalse(result.is_valid)  
**Confidence**: 0.85  
**Tags**: unittest  

```python
validate_inline_codes('use `cmd` here', 'use  here', result)
self.assertFalse(result.is_valid)
```

*Source: /tmp/caveman-build/caveman/tests/test_validate_inline.py:64*

### test_lost

**Category**: method_call  
**Description**: test lost  
**Expected**: self.assertIn('Inline code lost', result.errors[0])  
**Confidence**: 0.85  
**Tags**: unittest  

```python
self.assertFalse(result.is_valid)
self.assertIn('Inline code lost', result.errors[0])
```

*Source: /tmp/caveman-build/caveman/tests/test_validate_inline.py:65*

### test_added

**Category**: method_call  
**Description**: test added  
**Expected**: self.assertTrue(result.is_valid)  
**Confidence**: 0.85  
**Tags**: unittest  

```python
validate_inline_codes('use  here', 'use `new` here', result)
self.assertTrue(result.is_valid)
```

*Source: /tmp/caveman-build/caveman/tests/test_validate_inline.py:70*

### test_added

**Category**: method_call  
**Description**: test added  
**Expected**: self.assertIn('Inline code added', result.warnings[0])  
**Confidence**: 0.85  
**Tags**: unittest  

```python
self.assertTrue(result.is_valid)
self.assertIn('Inline code added', result.warnings[0])
```

*Source: /tmp/caveman-build/caveman/tests/test_validate_inline.py:71*

### test_empty_orig

**Category**: method_call  
**Description**: test empty orig  
**Expected**: self.assertTrue(result.is_valid)  
**Confidence**: 0.85  
**Tags**: unittest  

```python
validate_inline_codes('no codes', 'use `new` here', result)
self.assertTrue(result.is_valid)
```

*Source: /tmp/caveman-build/caveman/tests/test_validate_inline.py:76*

### test_both_empty

**Category**: method_call  
**Description**: test both empty  
**Expected**: self.assertTrue(result.is_valid)  
**Confidence**: 0.85  
**Tags**: unittest  

```python
validate_inline_codes('plain text', 'also plain', result)
self.assertTrue(result.is_valid)
```

*Source: /tmp/caveman-build/caveman/tests/test_validate_inline.py:81*

### test_match

**Category**: method_call  
**Description**: test match  
**Expected**: self.assertTrue(result.is_valid)  
**Confidence**: 0.85  
**Tags**: unittest  

```python
validate_inline_codes('use `cmd` here', 'use `cmd` here', result)
self.assertTrue(result.is_valid)
```

*Source: /tmp/caveman-build/caveman/tests/test_validate_inline.py:59*

### test_lost

**Category**: method_call  
**Description**: test lost  
**Expected**: self.assertFalse(result.is_valid)  
**Confidence**: 0.85  
**Tags**: unittest  

```python
validate_inline_codes('use `cmd` here', 'use  here', result)
self.assertFalse(result.is_valid)
```

*Source: /tmp/caveman-build/caveman/tests/test_validate_inline.py:64*

### test_lost

**Category**: method_call  
**Description**: test lost  
**Expected**: self.assertIn('Inline code lost', result.errors[0])  
**Confidence**: 0.85  
**Tags**: unittest  

```python
self.assertFalse(result.is_valid)
self.assertIn('Inline code lost', result.errors[0])
```

*Source: /tmp/caveman-build/caveman/tests/test_validate_inline.py:65*

### test_context_pack_maps_wire_and_exact_deferred_ids

**Category**: instantiation  
**Description**: Instantiate pack: test context pack maps wire and exact deferred ids  
**Confidence**: 0.80  
**Tags**: mock  

```python
result = _cave().context.pack('deploy failure', items, ContextPackOptions(max_tokens=30, reserve_tokens=5, recency_half_life_ms=3600000))
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_context_pack.py:51*

### test_context_pack_fails_closed_to_honest_zero_on_malformed_report

**Category**: instantiation  
**Description**: Instantiate pack: test context pack fails closed to honest zero on malformed report  
**Confidence**: 0.80  
**Tags**: mock  

```python
result = _cave().context.pack('alpha', items, ContextPackOptions(max_tokens=5))
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_context_pack.py:102*

### test_dockerfile_is_code

**Category**: instantiation  
**Description**: Instantiate _write: test dockerfile is code  
**Confidence**: 0.80  
**Tags**: unittest  

```python
p = self._write(tmp, 'Dockerfile', DOCKERFILE_BODY)
```

*Source: /tmp/caveman-build/caveman/tests/test_detect.py:58*

### test_makefile_is_code

**Category**: instantiation  
**Description**: Instantiate _write: test makefile is code  
**Confidence**: 0.80  
**Tags**: unittest  

```python
p = self._write(tmp, 'Makefile', MAKEFILE_BODY)
```

*Source: /tmp/caveman-build/caveman/tests/test_detect.py:64*

### test_known_names_case_insensitive

**Category**: instantiation  
**Description**: Instantiate _write: test known names case insensitive  
**Confidence**: 0.80  
**Tags**: unittest  

```python
p = self._write(tmp, name, 'irrelevant body\n')
```

*Source: /tmp/caveman-build/caveman/tests/test_detect.py:71*

### test_cmakelists_txt_not_compressible_despite_txt_extension

**Category**: instantiation  
**Description**: Instantiate _write: test cmakelists txt not compressible despite txt extension  
**Confidence**: 0.80  
**Tags**: unittest  

```python
p = self._write(tmp, 'CMakeLists.txt', 'add_executable(app main.c)\n')
```

*Source: /tmp/caveman-build/caveman/tests/test_detect.py:76*

### test_shebang_script_is_code

**Category**: instantiation  
**Description**: Instantiate _write: test shebang script is code  
**Confidence**: 0.80  
**Tags**: unittest  

```python
p = self._write(tmp, 'deploy', SHEBANG_BODY)
```

*Source: /tmp/caveman-build/caveman/tests/test_detect.py:82*

### test_extensionless_prose_still_compressible

**Category**: instantiation  
**Description**: Instantiate _write: test extensionless prose still compressible  
**Confidence**: 0.80  
**Tags**: unittest  

```python
p = self._write(tmp, 'NOTES', PROSE_BODY)
```

*Source: /tmp/caveman-build/caveman/tests/test_detect.py:88*

### test_markdown_still_compressible

**Category**: instantiation  
**Description**: Instantiate _write: test markdown still compressible  
**Confidence**: 0.80  
**Tags**: unittest  

```python
p = self._write(tmp, 'README.md', PROSE_BODY)
```

*Source: /tmp/caveman-build/caveman/tests/test_detect.py:94*

### test_dockerfile_is_code

**Category**: instantiation  
**Description**: Instantiate _write: test dockerfile is code  
**Confidence**: 0.80  
**Tags**: unittest  

```python
p = self._write(tmp, 'Dockerfile', DOCKERFILE_BODY)
```

*Source: /tmp/caveman-build/caveman/tests/test_detect.py:58*

### test_makefile_is_code

**Category**: instantiation  
**Description**: Instantiate _write: test makefile is code  
**Confidence**: 0.80  
**Tags**: unittest  

```python
p = self._write(tmp, 'Makefile', MAKEFILE_BODY)
```

*Source: /tmp/caveman-build/caveman/tests/test_detect.py:64*

### test_known_names_case_insensitive

**Category**: instantiation  
**Description**: Instantiate _write: test known names case insensitive  
**Confidence**: 0.80  
**Tags**: unittest  

```python
p = self._write(tmp, name, 'irrelevant body\n')
```

*Source: /tmp/caveman-build/caveman/tests/test_detect.py:71*

### test_install_upgrades_old_two_file_install

**Category**: instantiation  
**Description**: Instantiate loads: test install upgrades old two file install  
**Confidence**: 0.80  
**Tags**: unittest  

```python
settings = json.loads((home / '.claude' / 'settings.json').read_text())
```

*Source: /tmp/caveman-build/caveman/tests/test_hooks.py:44*

### test_install_reconfigures_missing_statusline

**Category**: instantiation  
**Description**: Instantiate run_cmd: test install reconfigures missing statusline  
**Confidence**: 0.80  
**Tags**: unittest  

```python
result = self.run_cmd(['bash', 'src/hooks/install.sh'], home)
```

*Source: /tmp/caveman-build/caveman/tests/test_hooks.py:84*

### test_install_reconfigures_missing_statusline

**Category**: instantiation  
**Description**: Instantiate loads: test install reconfigures missing statusline  
**Confidence**: 0.80  
**Tags**: unittest  

```python
updated = json.loads((claude_dir / 'settings.json').read_text())
```

*Source: /tmp/caveman-build/caveman/tests/test_hooks.py:88*

### test_uninstall_preserves_custom_statusline

**Category**: instantiation  
**Description**: Instantiate loads: test uninstall preserves custom statusline  
**Confidence**: 0.80  
**Tags**: unittest  

```python
updated = json.loads((claude_dir / 'settings.json').read_text())
```

*Source: /tmp/caveman-build/caveman/tests/test_hooks.py:134*

### test_activate_does_not_nudge_when_custom_statusline_exists

**Category**: instantiation  
**Description**: Instantiate run_cmd: test activate does not nudge when custom statusline exists  
**Confidence**: 0.80  
**Tags**: unittest  

```python
result = self.run_cmd(['node', 'src/hooks/caveman-activate.js'], home)
```

*Source: /tmp/caveman-build/caveman/tests/test_hooks.py:158*

### test_activate_emits_skill_md_not_fallback_from_repo_layout

**Category**: instantiation  
**Description**: Instantiate run_cmd: test activate emits skill md not fallback from repo layout  
**Confidence**: 0.80  
**Tags**: unittest  

```python
result = self.run_cmd(['node', 'src/hooks/caveman-activate.js'], home)
```

*Source: /tmp/caveman-build/caveman/tests/test_hooks.py:170*

### test_activate_finds_skill_beside_config_dir_hooks

**Category**: instantiation  
**Description**: Instantiate run_cmd: test activate finds skill beside config dir hooks  
**Confidence**: 0.80  
**Tags**: unittest  

```python
result = self.run_cmd(['node', str(hooks_dir / 'caveman-activate.js')], home)
```

*Source: /tmp/caveman-build/caveman/tests/test_hooks.py:194*

### test_activate_prefers_claude_plugin_root

**Category**: instantiation  
**Description**: Instantiate run_cmd: test activate prefers claude plugin root  
**Confidence**: 0.80  
**Tags**: unittest  

```python
result = self.run_cmd(['node', 'src/hooks/caveman-activate.js'], home, extra_env={'CLAUDE_PLUGIN_ROOT': str(plugin_root)})
```

*Source: /tmp/caveman-build/caveman/tests/test_hooks.py:209*

### test_install_upgrades_old_two_file_install

**Category**: instantiation  
**Description**: Instantiate loads: test install upgrades old two file install  
**Confidence**: 0.80  
**Tags**: unittest  

```python
settings = json.loads((home / '.claude' / 'settings.json').read_text())
```

*Source: /tmp/caveman-build/caveman/tests/test_hooks.py:44*

### test_install_reconfigures_missing_statusline

**Category**: instantiation  
**Description**: Instantiate run_cmd: test install reconfigures missing statusline  
**Confidence**: 0.80  
**Tags**: unittest  

```python
result = self.run_cmd(['bash', 'src/hooks/install.sh'], home)
```

*Source: /tmp/caveman-build/caveman/tests/test_hooks.py:84*

### test_price_affecting_keys_match_the_go_source_of_truth

**Category**: instantiation  
**Description**: Instantiate read_text: test price affecting keys match the go source of truth  
**Expected**: self.assertIsNotNone(block, 'PriceAffectingCapabilities not found in catalog.go')  
**Confidence**: 0.80  
**Tags**: unittest  

```python
go_source = (MODULE_PATH.parents[1] / 'platform' / 'catalog' / 'catalog.go').read_text(encoding='utf-8')
```

*Source: /tmp/caveman-build/caveman/shared/provider-catalog/tests/test_validate_catalog.py:48*

### test_price_affecting_keys_match_the_go_source_of_truth

**Category**: instantiation  
**Description**: Instantiate search: test price affecting keys match the go source of truth  
**Expected**: self.assertIsNotNone(block, 'PriceAffectingCapabilities not found in catalog.go')  
**Confidence**: 0.80  
**Tags**: unittest  

```python
block = re.search('var PriceAffectingCapabilities = \\[\\]string\\{(.*?)\\n\\}', go_source, re.S)
```

*Source: /tmp/caveman-build/caveman/shared/provider-catalog/tests/test_validate_catalog.py:51*

### test_price_affecting_keys_match_the_go_source_of_truth

**Category**: instantiation  
**Description**: Instantiate group: test price affecting keys match the go source of truth  
**Expected**: self.assertEqual(sorted(go_keys), sorted(validator.PRICE_AFFECTING_CAPABILITY_KEYS), 'the Go and Python price-affecting capability lists have drifted; a key pinned on one side but not the other can move money the catalog_version in a signed receipt does not attest')  
**Confidence**: 0.80  
**Tags**: unittest  

```python
body = block.group(1)
```

*Source: /tmp/caveman-build/caveman/shared/provider-catalog/tests/test_validate_catalog.py:55*

### test_price_affecting_keys_match_the_go_source_of_truth

**Category**: instantiation  
**Description**: Instantiate findall: test price affecting keys match the go source of truth  
**Expected**: self.assertEqual(sorted(go_keys), sorted(validator.PRICE_AFFECTING_CAPABILITY_KEYS), 'the Go and Python price-affecting capability lists have drifted; a key pinned on one side but not the other can move money the catalog_version in a signed receipt does not attest')  
**Confidence**: 0.80  
**Tags**: unittest  

```python
go_keys = re.findall('"([^"]+)"', body)
```

*Source: /tmp/caveman-build/caveman/shared/provider-catalog/tests/test_validate_catalog.py:56*

### test_parity

**Category**: instantiation  
**Description**: Instantiate get: test parity  
**Expected**: assert handler is not None, f'''no Python parity handler for operation "{op['name']}" — the SDK is missing this capability'''  
**Confidence**: 0.80  
**Tags**: pytest, mock  

```python
# Setup
# Fixtures: op

handler = HANDLERS.get(op['name'])
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_parity.py:358*

### test_parity

**Category**: instantiation  
**Description**: Instantiate get: test parity  
**Expected**: assert actual == expected, f"{op['name']}: result"  
**Confidence**: 0.80  
**Tags**: pytest, mock  

```python
# Setup
# Fixtures: op

wire = op['expect'].get('wire')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_parity.py:379*

### test_parity

**Category**: instantiation  
**Description**: Instantiate handler: test parity  
**Confidence**: 0.80  
**Tags**: pytest, mock  

```python
# Setup
# Fixtures: op

actual = handler(_make_cave(), op['input'])
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_parity.py:377*

### test_tool_events_are_traced_while_bare_provider_calls_stay_untraced

**Category**: instantiation  
**Description**: Instantiate next: test tool events are traced while bare provider calls stay untraced  
**Expected**: assert event['expect']['wire']['headers'] == 'std_headers_traced'  
**Confidence**: 0.80  

```python
event = next((op for op in OPS if op['name'] == 'event_tool_call'))
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_parity.py:407*

### test_tool_events_are_traced_while_bare_provider_calls_stay_untraced

**Category**: instantiation  
**Description**: Instantiate next: test tool events are traced while bare provider calls stay untraced  
**Expected**: assert event['expect']['wire']['headers'] == 'std_headers_traced'  
**Confidence**: 0.80  

```python
bare = next((op for op in OPS if op['name'] == 'provider_create_untraced'))
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_parity.py:408*

### test_distribution_metadata_is_publishable_and_typed

**Category**: instantiation  
**Description**: Instantiate loads: test distribution metadata is publishable and typed  
**Expected**: assert metadata['build-system'] == {'requires': ['setuptools==80.9.0'], 'build-backend': 'setuptools.build_meta'}  
**Confidence**: 0.80  

```python
metadata = tomllib.loads((package_root / 'pyproject.toml').read_text())
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_packaging.py:7*

### test_empty_input_refused

**Category**: instantiation  
**Description**: Instantiate _file_with: test empty input refused  
**Confidence**: 0.80  
**Tags**: mock, unittest  

```python
path = self._file_with(Path(tmp), '')
```

*Source: /tmp/caveman-build/caveman/tests/test_compress_safety.py:33*

### test_empty_input_refused

**Category**: instantiation  
**Description**: Instantiate compress_file: test empty input refused  
**Confidence**: 0.80  
**Tags**: mock, unittest  

```python
ok = compress_mod.compress_file(path)
```

*Source: /tmp/caveman-build/caveman/tests/test_compress_safety.py:35*

### test_empty_compressed_output_does_not_touch_disk

**Category**: instantiation  
**Description**: Instantiate _file_with: test empty compressed output does not touch disk  
**Confidence**: 0.80  
**Tags**: mock, unittest  

```python
path = self._file_with(Path(tmp), original)
```

*Source: /tmp/caveman-build/caveman/tests/test_compress_safety.py:44*

### test_empty_compressed_output_does_not_touch_disk

**Category**: instantiation  
**Description**: Instantiate compress_file: test empty compressed output does not touch disk  
**Confidence**: 0.80  
**Tags**: mock, unittest  

```python
ok = compress_mod.compress_file(path)
```

*Source: /tmp/caveman-build/caveman/tests/test_compress_safety.py:46*

### test_whitespace_only_compressed_output_does_not_touch_disk

**Category**: instantiation  
**Description**: Instantiate _file_with: test whitespace only compressed output does not touch disk  
**Confidence**: 0.80  
**Tags**: mock, unittest  

```python
path = self._file_with(Path(tmp), original)
```

*Source: /tmp/caveman-build/caveman/tests/test_compress_safety.py:54*

### test_whitespace_only_compressed_output_does_not_touch_disk

**Category**: instantiation  
**Description**: Instantiate compress_file: test whitespace only compressed output does not touch disk  
**Confidence**: 0.80  
**Tags**: mock, unittest  

```python
ok = compress_mod.compress_file(path)
```

*Source: /tmp/caveman-build/caveman/tests/test_compress_safety.py:56*

### test_identical_compressed_output_does_not_touch_disk

**Category**: instantiation  
**Description**: Instantiate _file_with: test identical compressed output does not touch disk  
**Confidence**: 0.80  
**Tags**: mock, unittest  

```python
path = self._file_with(Path(tmp), original)
```

*Source: /tmp/caveman-build/caveman/tests/test_compress_safety.py:64*

### test_identical_compressed_output_does_not_touch_disk

**Category**: instantiation  
**Description**: Instantiate compress_file: test identical compressed output does not touch disk  
**Confidence**: 0.80  
**Tags**: mock, unittest  

```python
ok = compress_mod.compress_file(path)
```

*Source: /tmp/caveman-build/caveman/tests/test_compress_safety.py:66*

### test_real_compression_writes_backup_and_target

**Category**: instantiation  
**Description**: Instantiate _file_with: test real compression writes backup and target  
**Confidence**: 0.80  
**Tags**: mock, unittest  

```python
path = self._file_with(Path(tmp), original)
```

*Source: /tmp/caveman-build/caveman/tests/test_compress_safety.py:79*

### test_real_compression_writes_backup_and_target

**Category**: instantiation  
**Description**: Instantiate Mock: test real compression writes backup and target  
**Confidence**: 0.80  
**Tags**: mock, unittest  

```python
v.return_value = mock.Mock(is_valid=True, errors=[], warnings=[])
```

*Source: /tmp/caveman-build/caveman/tests/test_compress_safety.py:82*

### test_provider_calls_inside_a_trace_carry_continuity_headers

**Category**: instantiation  
**Description**: Instantiate _capture: test provider calls inside a trace carry continuity headers  
**Expected**: assert len(captured) == 2  
**Confidence**: 0.80  
**Tags**: mock  

```python
captured, fake_urlopen = _capture({'id': 'resp_1'})
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_trace_continuity.py:56*

### test_injected_ids_are_used_verbatim

**Category**: instantiation  
**Description**: Instantiate _capture: test injected ids are used verbatim  
**Expected**: assert captured[0]['headers']['x-cave-trace-id'] == '0123456789abcdef0123456789abcdef'  
**Confidence**: 0.80  
**Tags**: mock  

```python
captured, fake_urlopen = _capture({'id': 'resp_1'})
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_trace_continuity.py:70*

### test_injected_ids_are_canonicalized_or_replaced

**Category**: instantiation  
**Description**: Instantiate _capture: test injected ids are canonicalized or replaced  
**Confidence**: 0.80  
**Tags**: mock  

```python
captured, fake_urlopen = _capture({'id': 'resp_1'})
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_trace_continuity.py:82*

### test_trace_scoped_sdk_calls_carry_continuity_headers

**Category**: instantiation  
**Description**: Instantiate _capture: test trace scoped sdk calls carry continuity headers  
**Expected**: assert len(captured) == 4  
**Confidence**: 0.80  
**Tags**: mock  

```python
captured, fake_urlopen = _capture({'ok': True, 'artifact_id': 'art_1', 'stored': True})
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_trace_continuity.py:105*

### test_provider_clients_off_the_cave_carry_no_continuity_headers

**Category**: instantiation  
**Description**: Instantiate _capture: test provider clients off the cave carry no continuity headers  
**Expected**: assert 'x-cave-trace-id' not in captured[0]['headers']  
**Confidence**: 0.80  
**Tags**: mock  

```python
captured, fake_urlopen = _capture({'id': 'resp_1'})
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_trace_continuity.py:121*

### test_trace_bound_exporter_reuses_the_trace_id

**Category**: instantiation  
**Description**: Instantiate record_span: test trace bound exporter reuses the trace id  
**Confidence**: 0.80  
**Tags**: mock  

```python
span = exporter.record_span('plan', parent_span_id=t.span_id)
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_trace_continuity.py:141*

### test_trace_exporters_with_different_service_names_keep_separate_buffers

**Category**: instantiation  
**Description**: Instantiate exporter: test trace exporters with different service names keep separate buffers  
**Confidence**: 0.80  

```python
custom_exporter = trace.exporter(service_name='custom')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_trace_continuity.py:153*

### test_concurrent_first_exporter_lookup_returns_one_buffer

**Category**: instantiation  
**Description**: Instantiate Barrier: test concurrent first exporter lookup returns one buffer  
**Confidence**: 0.80  
**Tags**: mock  

```python
barrier = threading.Barrier(workers)
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_trace_continuity.py:169*

### test_concurrent_first_exporter_lookup_returns_one_buffer

**Category**: instantiation  
**Description**: Instantiate CoreOTelExporter: test concurrent first exporter lookup returns one buffer  
**Confidence**: 0.80  
**Tags**: mock  

```python
exporter = CoreOTelExporter(*args, **kwargs)
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_trace_continuity.py:164*

### test_explicit_span_trace_id_wins_over_the_trace_binding

**Category**: instantiation  
**Description**: Instantiate record_span: test explicit span trace id wins over the trace binding  
**Confidence**: 0.80  

```python
span = t.exporter().record_span('plan', trace_id='11112222333344445555666677778888')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_trace_continuity.py:190*

### test_task_profile_json_round_trip

**Category**: instantiation  
**Description**: Instantiate TaskProfile: A fully-populated profile survives JSON serialize + deserialize unchanged.  
**Expected**: assert set(decoded.keys()) == SCHEMA_FIELDS  
**Confidence**: 0.80  

```python
tp = TaskProfile(quality_floor=0.98, alpha=7, candidate_allowlist=['anthropic/*'], candidate_denylist=['openai:gpt-5.5-pro'], max_p95_latency_delta_ms=500, max_error_delta=0.01, max_cost_ratio=0.5, cascade_enabled=True, cascade_tau=0.42, max_escalation_rate=0.2, stickiness='conversation', cross_provider=True, data_residency=['eu'], trusted_route_hints=['x-cave-route'])
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_task_profile.py:35*

### test_task_profile_json_round_trip

**Category**: instantiation  
**Description**: Instantiate loads: A fully-populated profile survives JSON serialize + deserialize unchanged.  
**Expected**: assert set(decoded.keys()) == SCHEMA_FIELDS  
**Confidence**: 0.80  

```python
decoded = json.loads(json.dumps(asdict(tp)))
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_task_profile.py:51*

### test_exporter_is_otel_exporter

**Category**: instantiation  
**Description**: Instantiate Cave: test exporter is otel exporter  
**Expected**: assert isinstance(exp, OTelExporter)  
**Confidence**: 0.80  

```python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_exporter.py:37*

### test_record_span_maps_genai_attributes_and_ids

**Category**: instantiation  
**Description**: Instantiate Cave: test record span maps genai attributes and ids  
**Expected**: assert isinstance(span, OTelSpan)  
**Confidence**: 0.80  

```python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='billing-agent')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_exporter.py:45*

### test_record_span_maps_genai_attributes_and_ids

**Category**: instantiation  
**Description**: Instantiate record_span: test record span maps genai attributes and ids  
**Expected**: assert isinstance(span, OTelSpan)  
**Confidence**: 0.80  

```python
span = exp.record_span('chat gpt-5.5', provider='openai', model='gpt-5.5', operation='chat', input_tokens=1200, output_tokens=350, cached_tokens=800, cost_usd=0.0145, workflow='invoice-flow')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_exporter.py:47*

### test_record_span_canonicalizes_valid_ids_and_replaces_or_drops_malformed_ids

**Category**: instantiation  
**Description**: Instantiate record_span: test record span canonicalizes valid ids and replaces or drops malformed ids  
**Expected**: assert canonical.trace_id == 'abcdef0123456789abcdef0123456789'  
**Confidence**: 0.80  

```python
canonical = exp.record_span('canonical', trace_id='ABCDEF0123456789ABCDEF0123456789', span_id='ABCDEF0123456789', parent_span_id='FEDCBA9876543210')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_exporter.py:79*

### test_record_span_canonicalizes_valid_ids_and_replaces_or_drops_malformed_ids

**Category**: instantiation  
**Description**: Instantiate record_span: test record span canonicalizes valid ids and replaces or drops malformed ids  
**Expected**: assert len(malformed.trace_id) == 32 and all((c in '0123456789abcdef' for c in malformed.trace_id))  
**Confidence**: 0.80  

```python
malformed = exp.record_span('malformed', trace_id='not-a-trace', span_id='0' * 16, parent_span_id='bad-parent')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_exporter.py:89*

### test_record_span_omits_malformed_counters_and_reserved_overrides

**Category**: instantiation  
**Description**: Instantiate Cave: test record span omits malformed counters and reserved overrides  
**Expected**: assert span.attributes['gen_ai.usage.input_tokens'] == 10  
**Confidence**: 0.80  

```python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='real-agent')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_exporter.py:102*

### test_record_span_omits_malformed_counters_and_reserved_overrides

**Category**: instantiation  
**Description**: Instantiate record_span: test record span omits malformed counters and reserved overrides  
**Expected**: assert span.attributes['gen_ai.usage.input_tokens'] == 10  
**Confidence**: 0.80  

```python
span = cave.exporter().record_span('bad telemetry', input_tokens=10, output_tokens=-1, cached_tokens=20, cost_usd=float('nan'), attributes={'gen_ai.usage.input_tokens': 999999, 'gen_ai.usage.cost_usd': 999999, 'cave.agent': 'spoofed-agent'})
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_exporter.py:103*

### test_export_posts_otlp_payload_with_headers_and_attrs

**Category**: instantiation  
**Description**: Instantiate Cave: test export posts otlp payload with headers and attrs  
**Expected**: assert len(captured) == 1  
**Confidence**: 0.80  
**Tags**: mock  

```python
cave = Cave(api_key='cave_live_test_key', base_url='http://localhost:8787', agent='billing-agent', default_workflow='invoice-flow')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_exporter.py:124*

### test_shared_context_put_posts_session_key_and_content

**Category**: instantiation  
**Description**: Instantiate Cave: test shared context put posts session key and content  
**Confidence**: 0.80  
**Tags**: mock  

```python
cave = Cave(api_key='cave_live_test_key', base_url='http://localhost:8787', agent='a')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_shared_context.py:28*

### test_shared_context_put_posts_session_key_and_content

**Category**: instantiation  
**Description**: Instantiate put: test shared context put posts session key and content  
**Confidence**: 0.80  
**Tags**: mock  

```python
out = cave.shared_context.put('h1', 'hello')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_shared_context.py:29*

### test_shared_context_get_recovers_content

**Category**: instantiation  
**Description**: Instantiate Cave: test shared context get recovers content  
**Confidence**: 0.80  
**Tags**: mock  

```python
cave = Cave(api_key='cave_live_test_key', base_url='http://localhost:8787', agent='a')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_shared_context.py:45*

### test_shared_context_get_recovers_content

**Category**: instantiation  
**Description**: Instantiate get: test shared context get recovers content  
**Confidence**: 0.80  
**Tags**: mock  

```python
out = cave.shared_context.get('h1')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_shared_context.py:46*

### test_breaker_interrupts_after_threshold

**Category**: instantiation  
**Description**: Instantiate RetryLoopBreaker: test breaker interrupts after threshold  
**Expected**: assert exc.value.repeats == 4  
**Confidence**: 0.80  

```python
breaker = RetryLoopBreaker(threshold=3)
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_structural.py:19*

### test_cave_retry_loop_breaker_default_fires_once

**Category**: instantiation  
**Description**: Instantiate Cave: test cave retry loop breaker default fires once  
**Expected**: assert fired == 1  
**Confidence**: 0.80  

```python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_structural.py:30*

### test_breaker_different_calls_reset_streak

**Category**: instantiation  
**Description**: Instantiate RetryLoopBreaker: test breaker different calls reset streak  
**Confidence**: 0.80  

```python
breaker = RetryLoopBreaker(threshold=2)
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_structural.py:43*

### test_breaker_guard_does_not_run_fn_on_interrupt

**Category**: instantiation  
**Description**: Instantiate RetryLoopBreaker: test breaker guard does not run fn on interrupt  
**Expected**: assert breaker.guard('t', {'a': 1}, fn) == 'ok'  
**Confidence**: 0.80  

```python
breaker = RetryLoopBreaker(threshold=1)
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_structural.py:58*

### test_all_job_methods_fail_locally_without_network_or_persistence_claims

**Category**: instantiation  
**Description**: Instantiate Cave: test all job methods fail locally without network or persistence claims  
**Expected**: urlopen.assert_not_called()  
**Confidence**: 0.80  
**Tags**: mock  

```python
cave = Cave(api_key='k', base_url='http://localhost:8787', agent='a')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_structural.py:76*

### test_assemble_keeps_prefix_bytes_identical_across_ten_volatile_turns

**Category**: instantiation  
**Description**: Instantiate _cave: test assemble keeps prefix bytes identical across ten volatile turns  
**Expected**: assert len(set(hashes)) == 1  
**Confidence**: 0.80  

```python
cave = _cave('assembly-ten-turn')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_assembly.py:89*

### test_assemble_keeps_prefix_bytes_identical_across_ten_volatile_turns

**Category**: instantiation  
**Description**: Instantiate assemble: test assemble keeps prefix bytes identical across ten volatile turns  
**Confidence**: 0.80  

```python
built = cave.assemble(_options(session_id='ten-turn', turn=turn))
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_assembly.py:92*

### test_assemble_hashes_canonical_utf8_prefix_bytes

**Category**: instantiation  
**Description**: Instantiate assemble: test assemble hashes canonical utf8 prefix bytes  
**Expected**: assert built.prefix_hash == hashlib.sha256(_canonical(prefix).encode()).hexdigest()  
**Confidence**: 0.80  

```python
built = _cave('assembly-unicode').assemble(AssembleOptions(provider='anthropic', model='claude-test', session_id='unicode', slots=[AssemblySlot(id='system', stability='stable', content='Précis 🦴'), AssemblySlot(id='turn', stability='volatile', content='réponds')]))
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_assembly.py:110*

### test_mutating_stable_slot_on_turn_six_fails_without_request

**Category**: instantiation  
**Description**: Instantiate _cave: test mutating stable slot on turn six fails without request  
**Expected**: assert caught.value.slot_id == 'system'  
**Confidence**: 0.80  

```python
cave = _cave('assembly-stability')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_assembly.py:126*

### test_mutating_stable_slot_on_turn_six_fails_without_request

**Category**: instantiation  
**Description**: Instantiate AssemblySlot: test mutating stable slot on turn six fails without request  
**Expected**: assert caught.value.slot_id == 'system'  
**Confidence**: 0.80  

```python
changed[1] = AssemblySlot(id='system', stability='stable', content='You changed.')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_assembly.py:130*

### test_anthropic_self_is_tools_first_and_none_emits_no_hints

**Category**: instantiation  
**Description**: Instantiate _cave: test anthropic self is tools first and none emits no hints  
**Expected**: assert self_built.breakpoints == ['tools[0]']  
**Confidence**: 0.80  

```python
cave = _cave('assembly-anthropic-modes')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_assembly.py:144*

### test_anthropic_self_is_tools_first_and_none_emits_no_hints

**Category**: instantiation  
**Description**: Instantiate assemble: test anthropic self is tools first and none emits no hints  
**Expected**: assert self_built.breakpoints == ['tools[0]']  
**Confidence**: 0.80  

```python
self_built = cave.assemble(_options(session_id='self', turn=1, emit_cache_hints='self'))
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_assembly.py:145*

### test_anthropic_self_is_tools_first_and_none_emits_no_hints

**Category**: instantiation  
**Description**: Instantiate assemble: test anthropic self is tools first and none emits no hints  
**Expected**: assert not _contains_key(none.request, 'cache_control')  
**Confidence**: 0.80  

```python
none = cave.assemble(_options(session_id='none', turn=2, emit_cache_hints='none'))
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_assembly.py:156*

### test_init_no_network

**Category**: instantiation  
**Description**: Instantiate Cave: test init no network  
**Expected**: assert cave.default_workflow == 'unlabeled-workflow'  
**Confidence**: 0.80  

```python
cave = Cave(api_key='cave_live_abcdefghijkl_x', base_url='http://localhost:8787', agent='support-agent')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_sdk.py:13*

### test_bedrock_descriptor_defaults_to_runtime

**Category**: instantiation  
**Description**: Instantiate Cave: test bedrock descriptor defaults to runtime  
**Expected**: assert cave.bedrock('eu-west-1') == {'region': 'eu-west-1', 'endpoint': 'runtime', 'gateway_prefix': '/bedrock', 'instrumented': True, 'sdk_only': False}  
**Confidence**: 0.80  

```python
cave = Cave(api_key='cave_live_abcdefghijkl_x', base_url='http://localhost:8787', agent='support-agent')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_sdk.py:18*

### test_bedrock_descriptor_mantle_is_explicit

**Category**: instantiation  
**Description**: Instantiate Cave: test bedrock descriptor mantle is explicit  
**Expected**: assert cave.bedrock('us-east-1', endpoint='mantle')['gateway_prefix'] == '/bedrock/anthropic'  
**Confidence**: 0.80  

```python
cave = Cave(api_key='cave_live_abcdefghijkl_x', base_url='http://localhost:8787', agent='support-agent')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_sdk.py:29*

### test_bedrock_descriptor_rejects_unknown_endpoint

**Category**: instantiation  
**Description**: Instantiate Cave: test bedrock descriptor rejects unknown endpoint  
**Confidence**: 0.80  

```python
cave = Cave(api_key='cave_live_abcdefghijkl_x', base_url='http://localhost:8787', agent='support-agent')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_sdk.py:34*

### test_vertex_provider_client

**Category**: instantiation  
**Description**: Instantiate Cave: test vertex provider client  
**Expected**: assert provider.prefix == '/vertex'  
**Confidence**: 0.80  

```python
cave = Cave(api_key='cave_live_abcdefghijkl_x', base_url='http://localhost:8787', agent='support-agent')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_sdk.py:40*

### test_vertex_provider_client

**Category**: instantiation  
**Description**: Instantiate vertex: test vertex provider client  
**Expected**: assert provider.prefix == '/vertex'  
**Confidence**: 0.80  

```python
provider = cave.vertex(upstream_key='ya29.token')
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_sdk.py:41*

### test_context_pack_maps_wire_and_exact_deferred_ids

**Category**: config  
**Description**: Configuration example: test context pack maps wire and exact deferred ids  
**Expected**: assert len(captured) == 1  
**Confidence**: 0.75  
**Tags**: mock  

```python
response = {'items': [{'id': 'deploy', 'text': 'server copy is ignored'}], 'tokens_used': 30, 'tokens_before': 75, 'tokens_saved': 45, 'deferred_count': 2, 'deferred_ids': ['intro', 'billing'], 'basis': 'inferred'}
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_context_pack.py:30*

### test_context_pack_fails_closed_to_honest_zero_on_malformed_report

**Category**: config  
**Description**: Configuration example: test context pack fails closed to honest zero on malformed report  
**Expected**: assert result.items == items  
**Confidence**: 0.75  
**Tags**: mock  

```python
response = {'items': [{'id': 'a'}], 'tokens_used': 5, 'tokens_before': 10, 'tokens_saved': 999, 'deferred_count': 1, 'deferred_ids': ['b'], 'basis': 'verified'}
```

*Source: /tmp/caveman-build/caveman/packages/sdk/python/tests/test_context_pack.py:91*

### TestRuntimeBuildsContractStoresExactOutputAndInformsOnRepeat

**Category**: instantiation  
**Description**: Test: TestRuntimeBuildsContractStoresExactOutputAndInformsOnRepeat  
**Confidence**: 0.60  

```go
session := Session{ID: "s1", CWD: "/repo", RepositoryState: "git:abc"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/nativeruntime/runtime_test.go:56*

### TestFileRepeatRequiresMatchingExternalInputState

**Category**: instantiation  
**Description**: Test: TestFileRepeatRequiresMatchingExternalInputState  
**Confidence**: 0.60  

```go
session := Session{ID: "external-file", RepositoryState: "git:same"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/nativeruntime/runtime_test.go:144*

### TestFileRepeatRequiresMatchingExternalInputState

**Category**: instantiation  
**Description**: Test: TestFileRepeatRequiresMatchingExternalInputState  
**Confidence**: 0.60  

```go
after := Request{
		ProtocolVersion: 1, Agent: Agent{ID: "claude"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/nativeruntime/runtime_test.go:145*

### TestTaskContractKeepsPolicyAcrossFollowupsAndInjectsOnlyOnPolicyChange

**Category**: instantiation  
**Description**: Test: TestTaskContractKeepsPolicyAcrossFollowupsAndInjectsOnlyOnPolicyChange  
**Confidence**: 0.60  

```go
session := Session{ID: "task-profile", RepositoryState: "git:abc"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/nativeruntime/runtime_test.go:175*

### TestTaskContractStartsNewGeneralTaskAndRefreshesGoalIdentity

**Category**: instantiation  
**Description**: Test: TestTaskContractStartsNewGeneralTaskAndRefreshesGoalIdentity  
**Confidence**: 0.60  

```go
session := Session{ID: "task-boundary", RepositoryState: "git:abc"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/nativeruntime/runtime_test.go:281*

### TestFullProfileWarmsRepositoryMapAndInjectsTypedTaskEvidence

**Category**: instantiation  
**Description**: Test: TestFullProfileWarmsRepositoryMapAndInjectsTypedTaskEvidence  
**Confidence**: 0.60  

```go
session := Session{ID: "repository-evidence", CWD: root, RepositoryState: "git:repo-state"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/nativeruntime/runtime_test.go:379*

### TestRepositoryIntelligenceAblationIsMechanismReal

**Category**: instantiation  
**Description**: Test: TestRepositoryIntelligenceAblationIsMechanismReal  
**Confidence**: 0.60  

```go
session := Session{ID: "repo-profile-" + tc.profile, CWD: root, RepositoryState: "git:one"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/nativeruntime/runtime_test.go:463*

### TestExperimentProfilesToggleRealRuntimeMechanisms

**Category**: instantiation  
**Description**: Test: TestExperimentProfilesToggleRealRuntimeMechanisms  
**Confidence**: 0.60  

```go
session := Session{ID: "profile-" + tc.profile, RepositoryState: "git:abc"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/nativeruntime/runtime_test.go:513*

### TestSessionEndWritesHonestReceiptOutsideModelContext

**Category**: instantiation  
**Description**: Test: TestSessionEndWritesHonestReceiptOutsideModelContext  
**Confidence**: 0.60  

```go
session := Session{ID: "claude:host-9", HostSessionID: "host-9"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/nativeruntime/runtime_test.go:555*

### TestCompactionTransitionsTaskStateHotEvidenceWarmAndRawObservationsCold

**Category**: instantiation  
**Description**: Test: TestCompactionTransitionsTaskStateHotEvidenceWarmAndRawObservationsCold  
**Confidence**: 0.60  

```go
session := Session{ID: "lifecycle"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/nativeruntime/runtime_test.go:670*

### TestCascadePicksCheapestCapableAtAlphaZero

**Category**: instantiation  
**Description**: Test: TestCascadePicksCheapestCapableAtAlphaZero  
**Confidence**: 0.60  

```go
f := Features{
		Provider:         "openai",
		Endpoint:         "/openai/v1/responses",
		CurrentModel:     "cave-auto",
		BaselineModel:    "gpt-5.5",
		BaselinePrice:    price(5, 30),
		BodyModelRewrite: true,
	}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/cascade_test.go:6*

### TestCascadeNotEscalatableWithSingleRung

**Category**: instantiation  
**Description**: Test: TestCascadeNotEscalatableWithSingleRung  
**Confidence**: 0.60  

```go
f := Features{
		Provider:         "openai",
		Endpoint:         "/openai/v1/responses",
		CurrentModel:     "cave-auto",
		BaselineModel:    "gpt-5.5",
		BaselinePrice:    price(5, 30),
		BodyModelRewrite: true,
	}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/cascade_test.go:34*

### TestCascadeAlphaOneTopRungNotEscalatable

**Category**: instantiation  
**Description**: Test: TestCascadeAlphaOneTopRungNotEscalatable  
**Confidence**: 0.60  

```go
f := Features{
		Provider:         "openai",
		Endpoint:         "/openai/v1/responses",
		CurrentModel:     "cave-auto",
		BaselineModel:    "gpt-5.5",
		BaselinePrice:    price(5, 30),
		BodyModelRewrite: true,
	}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/cascade_test.go:58*

### TestCascadeNoRoutePropagatedUnchanged

**Category**: instantiation  
**Description**: Test: TestCascadeNoRoutePropagatedUnchanged  
**Confidence**: 0.60  

```go
f := Features{Provider: "openai", BodyModelRewrite: true}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/cascade_test.go:84*

### TestNewValidation

**Category**: instantiation  
**Description**: Test: TestNewValidation  
**Confidence**: 0.60  

```go
base := Config{Provider: "anthropic", Model: "claude-haiku-4-5", APIKey: "sk-test"}
```

*Source: /tmp/caveman-build/caveman/rewriter/rewriter_test.go:470*

### TestOpenAISimulationStopsAtLastExplicitBreakpoint

**Category**: instantiation  
**Description**: Test: TestOpenAISimulationStopsAtLastExplicitBreakpoint  
**Confidence**: 0.60  

```go
request := TraceRequest{Native: native, StableSegmentCount: 1}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/cachebench_test.go:178*

### TestSimulationDoesNotInferCrossPartitionReuse

**Category**: instantiation  
**Description**: Test: TestSimulationDoesNotInferCrossPartitionReuse  
**Confidence**: 0.60  

```go
target := Target{RequestHitRate: 0, TokenHitRate: 0, MinEligibleRequest: 1}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/cachebench_test.go:199*

### TestWriteJSONDoesNotMutateReportDetails

**Category**: instantiation  
**Description**: Test: TestWriteJSONDoesNotMutateReportDetails  
**Confidence**: 0.60  

```go
report := Report{Providers: []ProviderReport{{Requests: []RequestResult{{RequestID: "one"}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/cachebench_test.go:280*

### TestObservationReaderEnforcesRecordLimit

**Category**: instantiation  
**Description**: Test: TestObservationReaderEnforcesRecordLimit  
**Confidence**: 0.60  

```go
target := Target{RequestHitRate: 0, TokenHitRate: 0, MinEligibleRequest: 1}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/cachebench_test.go:432*

### TestValidateChecksIdentityAndBoundPort

**Category**: instantiation  
**Description**: Test: TestValidateChecksIdentityAndBoundPort  
**Confidence**: 0.60  

```go
state := State{PID: 42, Listen: "127.0.0.1:8787"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/runstate/runstate_test.go:105*

### TestValidateChecksIdentityAndBoundPort

**Category**: instantiation  
**Description**: Test: TestValidateChecksIdentityAndBoundPort  
**Confidence**: 0.60  

```go
ok := validators{
		alive:      func(int) bool { return true }
```

*Source: /tmp/caveman-build/caveman/proxy/internal/runstate/runstate_test.go:106*

### TestRulesRouterPicksCheapestCapableAtAlphaZero

**Category**: instantiation  
**Description**: Test: TestRulesRouterPicksCheapestCapableAtAlphaZero  
**Confidence**: 0.60  

```go
f := Features{
		Provider:         "openai",
		Endpoint:         "/openai/v1/responses",
		CurrentModel:     "cave-auto",
		BaselineModel:    "gpt-5.5",
		BaselinePrice:    price(5, 30),
		Stream:           true,
		BodyModelRewrite: true,
	}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/routing_test.go:23*

### TestRulesRouterAlphaOnePicksClosestCheaperCandidate

**Category**: instantiation  
**Description**: Test: TestRulesRouterAlphaOnePicksClosestCheaperCandidate  
**Confidence**: 0.60  

```go
f := Features{
		Provider:         "openai",
		Endpoint:         "/openai/v1/responses",
		CurrentModel:     "cave-auto",
		BaselineModel:    "gpt-5.5",
		BaselinePrice:    price(5, 30),
		BodyModelRewrite: true,
	}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/routing_test.go:46*

### TestRulesRouterRequiresEndpointCapability

**Category**: instantiation  
**Description**: Test: TestRulesRouterRequiresEndpointCapability  
**Confidence**: 0.60  

```go
f := Features{
		Provider:         "openai",
		Endpoint:         "/openai/v1/responses",
		CurrentModel:     "cave-auto",
		BaselineModel:    "gpt-5.5",
		BaselinePrice:    price(5, 30),
		BodyModelRewrite: true,
	}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/routing_test.go:68*

### TestRulesRouterFailsClosedForUnknownDemandedCaps

**Category**: instantiation  
**Description**: Test: TestRulesRouterFailsClosedForUnknownDemandedCaps  
**Confidence**: 0.60  

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

*Source: /tmp/caveman-build/caveman/proxy/routing/routing_test.go:89*

### TestRulesRouterFailsClosedWhenContextCapMissingOrTooSmall

**Category**: instantiation  
**Description**: Test: TestRulesRouterFailsClosedWhenContextCapMissingOrTooSmall  
**Confidence**: 0.60  

```go
f := Features{
		Provider:         "openai",
		Endpoint:         "/openai/v1/responses",
		CurrentModel:     "cave-auto",
		BaselineModel:    "gpt-5.5",
		BaselinePrice:    price(5, 30),
		InputBytes:       40000,
		BodyModelRewrite: true,
	}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/routing_test.go:112*

### TestRulesRouterFailsClosedForVisionWithoutCap

**Category**: instantiation  
**Description**: Test: TestRulesRouterFailsClosedForVisionWithoutCap  
**Confidence**: 0.60  

```go
f := Features{
		Provider:         "openai",
		Endpoint:         "/openai/v1/responses",
		CurrentModel:     "cave-auto",
		BaselineModel:    "gpt-5.5",
		BaselinePrice:    price(5, 30),
		Vision:           true,
		BodyModelRewrite: true,
	}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/routing_test.go:135*

### TestRulesV1RejectsDegradedHealthAndWrongResidency

**Category**: instantiation  
**Description**: Test: TestRulesV1RejectsDegradedHealthAndWrongResidency  
**Confidence**: 0.60  

```go
f := Features{
		Provider:         "openai",
		Endpoint:         "/openai/v1/responses",
		CurrentModel:     "cave-auto",
		BaselineModel:    "gpt-5.5",
		BaselinePrice:    price(5, 30),
		BodyModelRewrite: true,
	}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/routing_test.go:157*

### TestFrontierV1QualityFloorBeatsCheapestPrice

**Category**: instantiation  
**Description**: Test: TestFrontierV1QualityFloorBeatsCheapestPrice  
**Confidence**: 0.60  

```go
f := Features{
		Provider:         "openai",
		Endpoint:         "/openai/v1/responses",
		CurrentModel:     "cave-auto",
		BaselineModel:    "gpt-5.5",
		BaselinePrice:    price(5, 30),
		BodyModelRewrite: true,
	}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/routing_test.go:205*

### TestFrontierV1DominatedOutlierCannotMoveDial

**Category**: instantiation  
**Description**: Test: TestFrontierV1DominatedOutlierCannotMoveDial  
**Confidence**: 0.60  

```go
router := FrontierRouter{Policy: FrontierPolicy{QualityFloor: 0.95}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/routing_test.go:386*

### TestFrontierV1RequiresQualityLabels

**Category**: instantiation  
**Description**: Test: TestFrontierV1RequiresQualityLabels  
**Confidence**: 0.60  

```go
f := Features{
		Provider:         "openai",
		Endpoint:         "/openai/v1/responses",
		CurrentModel:     "cave-auto",
		BaselineModel:    "gpt-5.5",
		BaselinePrice:    price(5, 30),
		BodyModelRewrite: true,
	}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/routing_test.go:435*

### recovers from transient rename failures within the retry budget

**Category**: instantiation  
**Description**: Test: recovers from transient rename failures within the retry budget  
**Confidence**: 0.60  

```javascript
const err = new Error('EBUSY: resource busy or locked')
```

*Source: /tmp/caveman-build/caveman/tests/test_symlink_flag.js:207*

### gives up silently after 3 failed attempts and leaves no orphaned temp file

**Category**: instantiation  
**Description**: Test: gives up silently after 3 failed attempts and leaves no orphaned temp file  
**Confidence**: 0.60  

```javascript
const err = new Error('EPERM: operation not permitted')
```

*Source: /tmp/caveman-build/caveman/tests/test_symlink_flag.js:232*

### a non-transient rename error also leaves no orphaned temp file

**Category**: instantiation  
**Description**: Test: a non-transient rename error also leaves no orphaned temp file  
**Confidence**: 0.60  

```javascript
const err = new Error('ENOSPC: no space left on device')
```

*Source: /tmp/caveman-build/caveman/tests/test_symlink_flag.js:254*

### TestSaveDirectStateIsPrivateAndComplete

**Category**: instantiation  
**Description**: Test: TestSaveDirectStateIsPrivateAndComplete  
**Confidence**: 0.60  

```go
want := directState{
		Endpoint: "http://127.0.0.1:9444",
		TargetID: "target-1",
		Targets:  map[string]browse.Target{"ua": {BackendDOMNodeID: 10}
```

*Source: /tmp/caveman-build/caveman/browse/cmd/caveman-browse/main_test.go:36*

### TestCommandVerifierUsesStructuredNoShellProtocol

**Category**: instantiation  
**Description**: Test: TestCommandVerifierUsesStructuredNoShellProtocol  
**Confidence**: 0.60  

```go
verifier := commandVerifier{
		path: os.Args[0], args: []string{"-test.run=^TestCommandVerifierUsesStructuredNoShellProtocol$"}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cmd/cache-replay/main_test.go:40*

### TestCommandVerifierStreamingInputDoesNotDeadlockWhenChildExits

**Category**: instantiation  
**Description**: Test: TestCommandVerifierStreamingInputDoesNotDeadlockWhenChildExits  
**Confidence**: 0.60  

```go
verifier := commandVerifier{
		path: os.Args[0], args: []string{"-test.run=^TestCommandVerifierUsesStructuredNoShellProtocol$"}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cmd/cache-replay/main_test.go:56*

### TestScopedEnvelopeRejectsDifferentTenant

**Category**: instantiation  
**Description**: Test: TestScopedEnvelopeRejectsDifferentTenant  
**Confidence**: 0.60  

```go
scope := Scope{OrganizationID: "org-a", ProjectID: "project-a", Kind: "capture"}
```

*Source: /tmp/caveman-build/caveman/shared/platform/envelope/envelope_test.go:70*

### TestMatchRoute

**Category**: instantiation  
**Description**: Test: TestMatchRoute  
**Confidence**: 0.60  

```go
b := Base{Provider: "openai", Routes: []string{"/v1/responses", "/openai/v1/responses"}
```

*Source: /tmp/caveman-build/caveman/proxy/providers/adapter_contract_test.go:12*

### TestMatchRoute

**Category**: instantiation  
**Description**: Test: TestMatchRoute  
**Confidence**: 0.60  

```go
prefix := Base{Provider: "openai_compatible", Routes: []string{"/compat/"}
```

*Source: /tmp/caveman-build/caveman/proxy/providers/adapter_contract_test.go:29*

### TestInspectRequestFailsPricingClosedForNonTokenCharges

**Category**: instantiation  
**Description**: Test: TestInspectRequestFailsPricingClosedForNonTokenCharges  
**Confidence**: 0.60  

```go
base := Base{Provider: tc.provider}
```

*Source: /tmp/caveman-build/caveman/proxy/providers/adapter_contract_test.go:58*

### TestSanitizeAndMapHeaders_NoKeyLeakAndCorrectMapping

**Category**: instantiation  
**Description**: Test: TestSanitizeAndMapHeaders_NoKeyLeakAndCorrectMapping  
**Confidence**: 0.60  

```go
b := Base{Provider: c.provider}
```

*Source: /tmp/caveman-build/caveman/proxy/providers/adapter_contract_test.go:126*

### TestSanitizeAndMapHeaders_AzureRejectsBearerUntilAuthContractExists

**Category**: instantiation  
**Description**: Test: TestSanitizeAndMapHeaders_AzureRejectsBearerUntilAuthContractExists  
**Confidence**: 0.60  

```go
b := Base{Provider: "azure_openai"}
```

*Source: /tmp/caveman-build/caveman/proxy/providers/adapter_contract_test.go:180*

### TestSanitizeAndMapHeaders_AzurePlaceholderBearerDefersToFallback

**Category**: instantiation  
**Description**: Test: TestSanitizeAndMapHeaders_AzurePlaceholderBearerDefersToFallback  
**Confidence**: 0.60  

```go
b := Base{Provider: "azure_openai"}
```

*Source: /tmp/caveman-build/caveman/proxy/providers/adapter_contract_test.go:194*

### TestSanitizeAndMapHeaders_TracePropagationIsOptIn

**Category**: instantiation  
**Description**: Test: TestSanitizeAndMapHeaders_TracePropagationIsOptIn  
**Confidence**: 0.60  

```go
b := Base{Provider: "openai"}
```

*Source: /tmp/caveman-build/caveman/proxy/providers/adapter_contract_test.go:210*

### TestMapProviderError

**Category**: instantiation  
**Description**: Test: TestMapProviderError  
**Confidence**: 0.60  

```go
b := Base{Provider: "openai"}
```

*Source: /tmp/caveman-build/caveman/proxy/providers/adapter_contract_test.go:235*

### TestSanitizeAndMapHeaders_AnthropicBearerSchemePreserved

**Category**: instantiation  
**Description**: Test: TestSanitizeAndMapHeaders_AnthropicBearerSchemePreserved  
**Confidence**: 0.60  

```go
b := Base{Provider: "anthropic"}
```

*Source: /tmp/caveman-build/caveman/proxy/providers/adapter_contract_test.go:250*

### TestSanitizeAndMapHeaders_GeminiBearerRequiresQuotaProject

**Category**: instantiation  
**Description**: Test: TestSanitizeAndMapHeaders_GeminiBearerRequiresQuotaProject  
**Confidence**: 0.60  

```go
b := Base{Provider: "gemini"}
```

*Source: /tmp/caveman-build/caveman/proxy/providers/adapter_contract_test.go:283*

### TestSessionValueRouterSelectsBySessionCostAndQuality

**Category**: instantiation  
**Description**: Test: TestSessionValueRouterSelectsBySessionCostAndQuality  
**Confidence**: 0.60  

```go
router := SessionValueRouter{Policy: FrontierPolicy{QualityFloor: 0.95, MaxCostRatio: 2}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/session_value_test.go:17*

### TestSessionValueRouterAppliesQualityDeltaRelativeToBaselineModel

**Category**: instantiation  
**Description**: Test: TestSessionValueRouterAppliesQualityDeltaRelativeToBaselineModel  
**Confidence**: 0.60  

```go
router := SessionValueRouter{Policy: FrontierPolicy{MaxQualityDelta: 0.02}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/session_value_test.go:76*

### TestValidateSessionValueArtifactRejectsUnsortedAndMalformedPolicy

**Category**: instantiation  
**Description**: Test: TestValidateSessionValueArtifactRejectsUnsortedAndMalformedPolicy  
**Confidence**: 0.60  

```go
spec := SessionValueFeatureSpec{Name: name, Scale: 1, Min: 0, Max: 10000, Required: name == "turn_index"}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/session_value_test.go:205*

### TestValidateSessionValueArtifactRejectsUnsortedAndMalformedPolicy

**Category**: instantiation  
**Description**: Test: TestValidateSessionValueArtifactRejectsUnsortedAndMalformedPolicy  
**Confidence**: 0.60  

```go
ctx := SessionValueContext{
		OrganizationID: "org-a", ProjectID: "project-a", PolicyVersion: 7, CandidatePoolHash: CandidatePoolHash(pool), Now: now, StateSchemaVersion: SessionValueStateSchema,
		State:            map[string]SessionValueFeatureValue{"turn_index": {Value: 2, Available: true}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/session_value_test.go:261*

### TestTransformOpenAIHistoryCollapseResponsesAndChat

**Category**: instantiation  
**Description**: Test: TestTransformOpenAIHistoryCollapseResponsesAndChat  
**Confidence**: 0.60  

```go
turn := GptHistoryTurn{Text: "<" + role + " t=\"" + strconvItoa(i) + "\">\n" + body + "\n</" + role + ">"}
```

*Source: /tmp/caveman-build/caveman/engine/pixel/history_openai_test.go:281*

### TestBestOfJSONUsesInjectedCounterAndReportsTOON

**Category**: instantiation  
**Description**: Test: TestBestOfJSONUsesInjectedCounterAndReportsTOON  
**Confidence**: 0.60  

```go
counter := bestOfCounter{inputTokens: 100, toonTokens: 10, elisionTokens: 20}
```

*Source: /tmp/caveman-build/caveman/engine/engine_test.go:156*

### TestBestOfJSONCanChooseElisionAndReportsExplicitFalse

**Category**: instantiation  
**Description**: Test: TestBestOfJSONCanChooseElisionAndReportsExplicitFalse  
**Confidence**: 0.60  

```go
counter := bestOfCounter{inputTokens: 100, toonTokens: 20, elisionTokens: 10}
```

*Source: /tmp/caveman-build/caveman/engine/engine_test.go:188*

### TestValidateConfigProductionRequiresTLSAndCredentials

**Category**: instantiation  
**Description**: Test: TestValidateConfigProductionRequiresTLSAndCredentials  
**Confidence**: 0.60  

```go
valid := Config{
		Endpoint:  "https://s3.fr-par.scw.cloud",
		Bucket:    "caveman-prod",
		AccessKey: "access-key",
		SecretKey: "secret-key",
		UseSSL:    true,
	}
```

*Source: /tmp/caveman-build/caveman/shared/platform/objectstore/objectstore_test.go:206*

### TestValidateConfigLocalAllowsExplicitPlaintextMinIO

**Category**: instantiation  
**Description**: Test: TestValidateConfigLocalAllowsExplicitPlaintextMinIO  
**Confidence**: 0.60  

```go
cfg := Config{Endpoint: "http://minio:9000", Bucket: "local", AccessKey: "minio", SecretKey: "minio", UseSSL: false}
```

*Source: /tmp/caveman-build/caveman/shared/platform/objectstore/objectstore_test.go:241*

### TestReplayRunnerProducesBoundObservedPopulation

**Category**: instantiation  
**Description**: Test: TestReplayRunnerProducesBoundObservedPopulation  
**Confidence**: 0.60  

```go
runner := ReplayRunner{
		Engine: cacheengine.New(cacheengine.Config{}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/replay_test.go:42*

### TestReplayRunnerPreservesBelowMinimumPopulation

**Category**: instantiation  
**Description**: Test: TestReplayRunnerPreservesBelowMinimumPopulation  
**Confidence**: 0.60  

```go
runner := ReplayRunner{
		Engine: cacheengine.New(cacheengine.Config{}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/replay_test.go:80*

### TestReplayRunnerRejectsKnownEngineFailureBeforeProviderTraffic

**Category**: instantiation  
**Description**: Test: TestReplayRunnerRejectsKnownEngineFailureBeforeProviderTraffic  
**Confidence**: 0.60  

```go
runner := ReplayRunner{
		Engine: cacheengine.New(cacheengine.Config{}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/replay_test.go:127*

### TestReplayRunnerRejectsInsufficientEngineEligiblePopulationBeforeTraffic

**Category**: instantiation  
**Description**: Test: TestReplayRunnerRejectsInsufficientEngineEligiblePopulationBeforeTraffic  
**Confidence**: 0.60  

```go
target := Target{RequestHitRate: .97, TokenHitRate: .97, MinEligibleRequest: 1}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/replay_test.go:156*

### TestReplayRunnerRejectsInsufficientEngineEligiblePopulationBeforeTraffic

**Category**: instantiation  
**Description**: Test: TestReplayRunnerRejectsInsufficientEngineEligiblePopulationBeforeTraffic  
**Confidence**: 0.60  

```go
runner := ReplayRunner{
		Engine: cacheengine.New(cacheengine.Config{}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/replay_test.go:157*

### TestReplayPreflightFailsClosed

**Category**: instantiation  
**Description**: Test: TestReplayPreflightFailsClosed  
**Confidence**: 0.60  

```go
limits := ReplayLimits{MaxRequests: 2, MaxDeclaredBilledTokens: 30000, MaxGap: time.Minute, MaxScheduleDrift: time.Second, MaxConcurrency: 1, RequireGroundedTiming: true}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/replay_test.go:180*

### TestReplayRunnerFailsWhenProviderExceedsDeclaredInputCeiling

**Category**: instantiation  
**Description**: Test: TestReplayRunnerFailsWhenProviderExceedsDeclaredInputCeiling  
**Confidence**: 0.60  

```go
runner := ReplayRunner{
		Engine: cacheengine.New(cacheengine.Config{}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/replay_test.go:252*

### TestReplayRunnerFailsWhenProviderExceedsOutputCeiling

**Category**: instantiation  
**Description**: Test: TestReplayRunnerFailsWhenProviderExceedsOutputCeiling  
**Confidence**: 0.60  

```go
runner := ReplayRunner{
		Engine: cacheengine.New(cacheengine.Config{}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/replay_test.go:281*

### TestReplayRunnerRejectsMalformedEmbeddedProviderAndVerifierEvidence

**Category**: instantiation  
**Description**: Test: TestReplayRunnerRejectsMalformedEmbeddedProviderAndVerifierEvidence  
**Confidence**: 0.60  

```go
runner := ReplayRunner{
				Engine: cacheengine.New(cacheengine.Config{}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/replay_test.go:323*

### TestReplayRunnerFailsClosedOnClockRegression

**Category**: instantiation  
**Description**: Test: TestReplayRunnerFailsClosedOnClockRegression  
**Confidence**: 0.60  

```go
runner := ReplayRunner{
		Engine: cacheengine.New(cacheengine.Config{}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/replay_test.go:354*

### TestServeConnRejectsOversizedRequestWithoutDecision

**Category**: instantiation  
**Description**: Test: TestServeConnRejectsOversizedRequestWithoutDecision  
**Confidence**: 0.60  

```go
request := Request{
		ProtocolVersion: 1, Agent: Agent{ID: "claude"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/nativeruntime/server_test.go:94*

### TestImpactTestsUsesDirectAndPackageRelationshipsWithoutCoverageClaims

**Category**: instantiation  
**Description**: Test: TestImpactTestsUsesDirectAndPackageRelationshipsWithoutCoverageClaims  
**Confidence**: 0.60  

```go
repoMap := Map{Files: []File{
		{Path: "auth/refresh.go", Package: "auth"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/repointel/index_test.go:92*

### TestObserveRawCacheUsageKeepsVerifiedZero

**Category**: instantiation  
**Description**: Test: TestObserveRawCacheUsageKeepsVerifiedZero  
**Confidence**: 0.60  

```go
result := NativeResult{Applied: true, Profile: Profile{Attribution: AttributionCausal}
```

*Source: /tmp/caveman-build/caveman/cacheengine/raw_usage_test.go:53*

### TestRetentionProbesClassifyVisibleRecoverableAndLost

**Category**: instantiation  
**Description**: Test: TestRetentionProbesClassifyVisibleRecoverableAndLost  
**Confidence**: 0.60  

```go
recoverable := fixedTransform{
		output:      []byte("ERR_VISIBLE"),
		recoverable: true,
	}
```

*Source: /tmp/caveman-build/caveman/engine/evals/harness_test.go:201*

### TestRetentionProbesClassifyVisibleRecoverableAndLost

**Category**: instantiation  
**Description**: Test: TestRetentionProbesClassifyVisibleRecoverableAndLost  
**Confidence**: 0.60  

```go
lost := fixedTransform{output: []byte("ERR_VISIBLE"), recoverable: false}
```

*Source: /tmp/caveman-build/caveman/engine/evals/harness_test.go:222*

### TestToolsListIncludesOptionalMetadata

**Category**: instantiation  
**Description**: Test: TestToolsListIncludesOptionalMetadata  
**Confidence**: 0.60  

```go
tool := Tool{
		Name:        "large_result",
		Description: "Return one large result.",
		InputSchema: ObjectSchema(map[string]any{}
```

*Source: /tmp/caveman-build/caveman/mcp/server_test.go:140*

### TestPlumbingDispatchWithMockEngine

**Category**: instantiation  
**Description**: Test: TestPlumbingDispatchWithMockEngine  
**Confidence**: 0.60  

```go
eng := mockEngine{
		compress: func(in []byte, _ engine.Options) (engine.Result, error) {
			called = true
			return engine.Result{Output: []byte("SMALL"), Ratio: 0.5, TokensBefore: 10, TokensAfter: 5, Basis: engine.BasisInferred, ContentType: "json", RecoveryHandle: "ccr_abc"}
```

*Source: /tmp/caveman-build/caveman/mcp/server_test.go:180*

### TestCompressToolForwardsContentType

**Category**: instantiation  
**Description**: Test: TestCompressToolForwardsContentType  
**Confidence**: 0.60  

```go
eng := mockEngine{
		compress: func(in []byte, o engine.Options) (engine.Result, error) {
			got = o
			return engine.Result{
				Output:          []byte("rows[2]{id,name}
```

*Source: /tmp/caveman-build/caveman/mcp/server_test.go:205*

### TestCompressCCRErrorPreservesPassThroughTokenAccounting

**Category**: instantiation  
**Description**: Test: TestCompressCCRErrorPreservesPassThroughTokenAccounting  
**Confidence**: 0.60  

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

*Source: /tmp/caveman-build/caveman/mcp/server_test.go:260*

### TestRetrieveNormalizesMarkerForms

**Category**: instantiation  
**Description**: Test: TestRetrieveNormalizesMarkerForms  
**Confidence**: 0.60  

```go
eng := mockEngine{
			retrieve: func(handle string) ([]byte, error) {
				got = handle
				return []byte("original"), nil
			}
```

*Source: /tmp/caveman-build/caveman/mcp/server_test.go:303*

### TestToonDecodeEngineErrorFailsLoudly

**Category**: instantiation  
**Description**: Test: TestToonDecodeEngineErrorFailsLoudly  
**Confidence**: 0.60  

```go
eng := mockEngine{
		toonDecode: func([]byte) ([]byte, error) { return nil, errors.New("engine down") }
```

*Source: /tmp/caveman-build/caveman/mcp/server_test.go:421*

### TestHandlerPanicYieldsToolErrorNotCrash

**Category**: instantiation  
**Description**: Test: TestHandlerPanicYieldsToolErrorNotCrash  
**Confidence**: 0.60  

```go
boom := Tool{
		Name:        "boom",
		Description: "panics",
		InputSchema: ObjectSchema(map[string]any{}
```

*Source: /tmp/caveman-build/caveman/mcp/server_test.go:631*

### TestHandlerPanicYieldsToolErrorNotCrash

**Category**: instantiation  
**Description**: Test: TestHandlerPanicYieldsToolErrorNotCrash  
**Confidence**: 0.60  

```go
safe := Tool{
		Name:        "safe",
		Description: "ok",
		InputSchema: ObjectSchema(map[string]any{}
```

*Source: /tmp/caveman-build/caveman/mcp/server_test.go:637*

### TestOversizedResultRejectedWithCaveCode

**Category**: instantiation  
**Description**: Test: TestOversizedResultRejectedWithCaveCode  
**Confidence**: 0.60  

```go
huge := Tool{
		Name:        "huge",
		Description: "returns a huge block",
		InputSchema: ObjectSchema(map[string]any{}
```

*Source: /tmp/caveman-build/caveman/mcp/server_test.go:709*

### TestRetrievePayoutExemptFromResultCap

**Category**: instantiation  
**Description**: Test: TestRetrievePayoutExemptFromResultCap  
**Confidence**: 0.60  

```go
eng := mockEngine{
		retrieve: func(string) ([]byte, error) { return []byte(original), nil }
```

*Source: /tmp/caveman-build/caveman/mcp/server_test.go:741*

### TestBehaviorScanDedupsUsageByMessageID

**Category**: instantiation  
**Description**: Test: TestBehaviorScanDedupsUsageByMessageID  
**Confidence**: 0.60  

```go
beh := behaviorScan{SkillUse: map[string]int{}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/store/learn_retro_test.go:422*

### TestScanDeadlinesPollBeforeEveryLineParse

**Category**: instantiation  
**Description**: Test: TestScanDeadlinesPollBeforeEveryLineParse  
**Confidence**: 0.60  

```go
beh := behaviorScan{SkillUse: map[string]int{}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/store/learn_retro_test.go:1059*

### TestPayloadOverlappingOrgRulesResolveByPriority

**Category**: instantiation  
**Description**: Test: TestPayloadOverlappingOrgRulesResolveByPriority  
**Confidence**: 0.60  

```go
high := Rule{Name: "narrow", Type: RuleTypeRegex, Pattern: `ABC-123`, Replacement: "[N]", Priority: 1}
```

*Source: /tmp/caveman-build/caveman/shared/platform/redact/payload_test.go:190*

### TestPayloadOverlappingOrgRulesResolveByPriority

**Category**: instantiation  
**Description**: Test: TestPayloadOverlappingOrgRulesResolveByPriority  
**Confidence**: 0.60  

```go
low := Rule{Name: "broad", Type: RuleTypeRegex, Pattern: `ABC-\d+`, Replacement: "[B]", Priority: 50}
```

*Source: /tmp/caveman-build/caveman/shared/platform/redact/payload_test.go:191*

### TestTenantPolicyRequiresExactOrganizationEquality

**Category**: instantiation  
**Description**: Test: TestTenantPolicyRequiresExactOrganizationEquality  
**Confidence**: 0.60  

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

*Source: /tmp/caveman-build/caveman/shared/platform/postgresconfig/postgresconfig_test.go:188*

### TestObserveRequiresProviderCacheTelemetry

**Category**: instantiation  
**Description**: Test: TestObserveRequiresProviderCacheTelemetry  
**Confidence**: 0.60  

```go
result := NativeResult{
		Applied:      true,
		Decision:     DecisionApply,
		OptimizerIDs: []string{AnthropicStableOptimizerID}
```

*Source: /tmp/caveman-build/caveman/cacheengine/observation_test.go:8*

### TestObserveRejectsOrganicHitAttribution

**Category**: instantiation  
**Description**: Test: TestObserveRejectsOrganicHitAttribution  
**Confidence**: 0.60  

```go
result := NativeResult{
		Applied:    false,
		Decision:   DecisionObserveOnly,
		Profile:    Profile{Attribution: AttributionOrganic}
```

*Source: /tmp/caveman-build/caveman/cacheengine/observation_test.go:31*

### TestCreds_PassthroughThenBYOK

**Category**: instantiation  
**Description**: Test: TestCreds_PassthroughThenBYOK  
**Confidence**: 0.60  

```go
c := Creds{cfg: config.Config{}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/standalone/standalone_test.go:621*

### TestCreds_NamedCompatEnvResolution

**Category**: instantiation  
**Description**: Test: TestCreds_NamedCompatEnvResolution  
**Confidence**: 0.60  

```go
c := Creds{cfg: config.Config{Compat: map[string]config.CompatConfig{
		"openrouter": {BaseURL: "https://openrouter.ai/api", APIKeyEnv: "OPENROUTER_API_KEY"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/standalone/standalone_test.go:755*

### TestCreds_BearerSchemeRecorded

**Category**: instantiation  
**Description**: Test: TestCreds_BearerSchemeRecorded  
**Confidence**: 0.60  

```go
c := Creds{cfg: config.Config{}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/standalone/standalone_test.go:895*

### TestCreds_BedrockInboundThenEnvironment

**Category**: instantiation  
**Description**: Test: TestCreds_BedrockInboundThenEnvironment  
**Confidence**: 0.60  

```go
c := Creds{cfg: config.Config{}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/standalone/standalone_test.go:930*

### TestCustomDriverMakesNativeEngineProviderAgnostic

**Category**: instantiation  
**Description**: Test: TestCustomDriverMakesNativeEngineProviderAgnostic  
**Confidence**: 0.60  

```go
request := NativeRequest{
		Scope: "org-a/project-a", Epoch: "acme", Provider: "acme", Model: "any-model",
		Body: []byte("opaque-wire-body"), RuntimeMode: "optimize", AuthMode: "payg", ExpectedCalls: 3,
		StableSegments: []Segment{{Name: "prefix", Content: []byte("stable opaque prefix"), Tokens: 900, Stable: true, Cacheable: true}
```

*Source: /tmp/caveman-build/caveman/cacheengine/native_test.go:536*

### TestCustomDriverEmptyBodyPassesThrough

**Category**: instantiation  
**Description**: Test: TestCustomDriverEmptyBodyPassesThrough  
**Confidence**: 0.60  

```go
request := NativeRequest{
		Scope: "org-a/project-a", Epoch: "empty", Provider: "acme", RuntimeMode: "optimize", AuthMode: "payg",
		StableSegments: []Segment{{Name: "prefix", Content: []byte("stable"), Tokens: 1024, Stable: true, Cacheable: true}
```

*Source: /tmp/caveman-build/caveman/cacheengine/native_test.go:562*

### TestCustomCallbacksCannotMutateCallerRequest

**Category**: instantiation  
**Description**: Test: TestCustomCallbacksCannotMutateCallerRequest  
**Confidence**: 0.60  

```go
request := NativeRequest{
		Scope: "scope", Epoch: "epoch", Provider: "acme", Model: "model", Body: []byte("original"),
		RuntimeMode: "optimize", AuthMode: "payg", ExpectedCalls: 2,
		StableSegments: []Segment{{Name: "stable", Content: []byte("prefix"), Tokens: 1024, Stable: true, Cacheable: true}
```

*Source: /tmp/caveman-build/caveman/cacheengine/native_test.go:588*

### TestCustomDriverInvalidOptimizerIdentityPassesThrough

**Category**: instantiation  
**Description**: Test: TestCustomDriverInvalidOptimizerIdentityPassesThrough  
**Confidence**: 0.60  

```go
request := NativeRequest{
			Scope: "scope", Epoch: fmt.Sprintf("epoch-%d", index), Provider: "acme", Model: "model", Body: []byte("original"),
			RuntimeMode: "optimize", AuthMode: "payg", ExpectedCalls: 2,
			StableSegments: []Segment{{Name: "stable", Content: []byte("prefix"), Tokens: 1024, Stable: true, Cacheable: true}
```

*Source: /tmp/caveman-build/caveman/cacheengine/native_test.go:615*

### TestCustomDriverOutputCannotExceedRequestByteLimit

**Category**: instantiation  
**Description**: Test: TestCustomDriverOutputCannotExceedRequestByteLimit  
**Confidence**: 0.60  

```go
request := NativeRequest{
		Scope: "scope", Epoch: "bounded-output", Provider: "acme", Model: "model", Body: []byte("original"),
		RuntimeMode: "optimize", AuthMode: "payg", ExpectedCalls: 2,
		StableSegments: []Segment{{Name: "stable", Content: []byte("prefix"), Tokens: 1024, Stable: true, Cacheable: true}
```

*Source: /tmp/caveman-build/caveman/cacheengine/native_test.go:637*

### TestSimulateBestOfTOONIsLosslessToModelButNeedsCCRForByteExactRecovery

**Category**: instantiation  
**Description**: Test: TestSimulateBestOfTOONIsLosslessToModelButNeedsCCRForByteExactRecovery  
**Confidence**: 0.60  

```go
counter := bestOfCounter{inputTokens: 100, toonTokens: 10, elisionTokens: 20}
```

*Source: /tmp/caveman-build/caveman/engine/simulate_test.go:169*

### TestSimulateBestOfElisionRemainsLossy

**Category**: instantiation  
**Description**: Test: TestSimulateBestOfElisionRemainsLossy  
**Confidence**: 0.60  

```go
counter := bestOfCounter{inputTokens: 100, toonTokens: 20, elisionTokens: 10}
```

*Source: /tmp/caveman-build/caveman/engine/simulate_test.go:192*

### TestImportedNonFiniteCostCannotPoisonAggregates

**Category**: instantiation  
**Description**: Test: TestImportedNonFiniteCostCannotPoisonAggregates  
**Confidence**: 0.60  

```go
sp := Span{TotalCostUSD: math.Inf(1)}
```

*Source: /tmp/caveman-build/caveman/shared/platform/importers/importers_test.go:429*

### TestLiveZoneRequiresPrefixStabilizer

**Category**: instantiation  
**Description**: Test: TestLiveZoneRequiresPrefixStabilizer  
**Confidence**: 0.60  

```go
adapter := adapterWithoutPrefixStabilizer{Adapter: openai.New("https://upstream.test")}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/gateway/prefix_stability_test.go:463*

### TestCellAdvanceFourReferenceWidth

**Category**: instantiation  
**Description**: Test: TestCellAdvanceFourReferenceWidth  
**Confidence**: 0.60  

```go
adv4 := RenderStyle{CellWBonus: -1}
```

*Source: /tmp/caveman-build/caveman/engine/pixel/render_density_test.go:29*

### TestPitchSixGeometry

**Category**: instantiation  
**Description**: Test: TestPitchSixGeometry  
**Confidence**: 0.60  

```go
style := RenderStyle{PitchY: 6}
```

*Source: /tmp/caveman-build/caveman/engine/pixel/render_density_test.go:70*

### TestReadAgentCorpusLMCacheJSONLAndHFRows

**Category**: instantiation  
**Description**: Test: TestReadAgentCorpusLMCacheJSONLAndHFRows  
**Confidence**: 0.60  

```go
metadata := CorpusMetadata{Name: "fixture", License: "CC-BY-4.0", Revision: "sha256:test"}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/corpus_test.go:27*

### TestRunCorpusReplaysAllProvidersAndIncludesColdStarts

**Category**: instantiation  
**Description**: Test: TestRunCorpusReplaysAllProvidersAndIncludesColdStarts  
**Confidence**: 0.60  

```go
corpus := AgentCorpus{
		Metadata: CorpusMetadata{Name: "synthetic-agent-trace", License: "test-only", Revision: "fixture-v1"}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/corpus_test.go:55*

### TestRunCorpusReplaysAllProvidersAndIncludesColdStarts

**Category**: instantiation  
**Description**: Test: TestRunCorpusReplaysAllProvidersAndIncludesColdStarts  
**Confidence**: 0.60  

```go
target := Target{RequestHitRate: 0.75, TokenHitRate: 0.75, MinEligibleRequest: 5}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/corpus_test.go:59*

### TestBuildCorpusTraceExportsReplayableProviderRequests

**Category**: instantiation  
**Description**: Test: TestBuildCorpusTraceExportsReplayableProviderRequests  
**Confidence**: 0.60  

```go
corpus := AgentCorpus{Metadata: CorpusMetadata{Name: "export"}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/corpus_test.go:88*

### TestRunCorpusStartsNewEpochOnStableInitialPromptMutation

**Category**: instantiation  
**Description**: Test: TestRunCorpusStartsNewEpochOnStableInitialPromptMutation  
**Confidence**: 0.60  

```go
corpus := AgentCorpus{Metadata: CorpusMetadata{Name: "mutated"}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/corpus_test.go:136*

### TestRunCorpusStartsNewEpochOnStableInitialPromptMutation

**Category**: instantiation  
**Description**: Test: TestRunCorpusStartsNewEpochOnStableInitialPromptMutation  
**Confidence**: 0.60  

```go
target := Target{RequestHitRate: 0, TokenHitRate: 0, MinEligibleRequest: 1}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/corpus_test.go:137*

### TestRunCorpusClassifiesBelowMinimumRequestsAsIneligible

**Category**: instantiation  
**Description**: Test: TestRunCorpusClassifiesBelowMinimumRequestsAsIneligible  
**Confidence**: 0.60  

```go
corpus := AgentCorpus{Metadata: CorpusMetadata{Name: "short"}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/corpus_test.go:156*

### TestReadAgentCorpusRejectsMalformedAndLimits

**Category**: instantiation  
**Description**: Test: TestReadAgentCorpusRejectsMalformedAndLimits  
**Confidence**: 0.60  

```go
metadata := CorpusMetadata{Name: "fixture"}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/corpus_test.go:172*

### TestPinnedPublicCorpusResultPreservesFailedTokenGate

**Category**: instantiation  
**Description**: Test: TestPinnedPublicCorpusResultPreservesFailedTokenGate  
**Confidence**: 0.60  

```go
system := CorpusMessage{Role: "system", Content: mustRawString(strings.Repeat("stable repository policy ", 2_000))}
```

*Source: /tmp/caveman-build/caveman/cacheengine/cachebench/corpus_test.go:261*

### TestBedrockRegionPrecedence

**Category**: instantiation  
**Description**: Test: TestBedrockRegionPrecedence  
**Confidence**: 0.60  

```go
cfg := Config{Providers: map[string]ProviderConfig{
				"bedrock": {Region: tc.configured}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/config/config_test.go:286*

### TestCompatCredential_UsesPerNameEnvAndEmptyMeansNoAuth

**Category**: instantiation  
**Description**: Test: TestCompatCredential_UsesPerNameEnvAndEmptyMeansNoAuth  
**Confidence**: 0.60  

```go
cfg := Config{Compat: map[string]CompatConfig{
		"openrouter": {BaseURL: "https://openrouter.ai/api", APIKeyEnv: "OPENROUTER_API_KEY"}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/config/config_test.go:298*

### TestUsageScanner_TeeAndStatus

**Category**: instantiation  
**Description**: Test: TestUsageScanner_TeeAndStatus  
**Confidence**: 0.60  

```go
b := Base{Provider: "anthropic"}
```

*Source: /tmp/caveman-build/caveman/proxy/providers/adapter_usage_test.go:392*

### TestCacheStatus

**Category**: instantiation  
**Description**: Test: TestCacheStatus  
**Confidence**: 0.60  

```go
b := Base{Provider: "openai"}
```

*Source: /tmp/caveman-build/caveman/proxy/providers/adapter_usage_test.go:429*

### package.json 

**Category**: instantiation  
**Description**: Test: package.json   
**Confidence**: 0.60  

```javascript
const shipped = new Set((pkg.files || [])
```

*Source: /tmp/caveman-build/caveman/tests/test_mcp_shrink.js:194*

### package.json 

**Category**: instantiation  
**Description**: Test: package.json   
**Confidence**: 0.60  

```javascript
const seen = new Set()
```

*Source: /tmp/caveman-build/caveman/tests/test_mcp_shrink.js:201*

### TestHeuristicProviderAndCostAloneEmitNoCacheMove

**Category**: instantiation  
**Description**: Test: TestHeuristicProviderAndCostAloneEmitNoCacheMove  
**Confidence**: 0.60  

```go
plan := TrialPlan{Headline: TrialHeadline{Requests: 2, TotalCostUSD: 2}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/store/trial_feature_test.go:299*

### TestScopedTrialMovesIgnoreImportedContext

**Category**: instantiation  
**Description**: Test: TestScopedTrialMovesIgnoreImportedContext  
**Confidence**: 0.60  

```go
plan := TrialPlan{
		Headline: TrialHeadline{Requests: 1, InputTokens: 100, TotalCostUSD: 0.01}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/store/trial_feature_test.go:362*

### TestGeneratedLearnSinksCarryPracticeIDOrHonestEmpty

**Category**: instantiation  
**Description**: Test: TestGeneratedLearnSinksCarryPracticeIDOrHonestEmpty  
**Confidence**: 0.60  

```go
cfg := configScan{
		ClaudeMDUser: &ConfigSnapshot{
			Scope:  "user",
			Kind:   "claude_md",
			Lines:  claudeMDLineBudget + 1,
			Tokens: claudeMDTokenAlarm + 1,
		}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/store/practice_mapping_test.go:48*

### TestGeneratedLearnSinksCarryPracticeIDOrHonestEmpty

**Category**: instantiation  
**Description**: Test: TestGeneratedLearnSinksCarryPracticeIDOrHonestEmpty  
**Confidence**: 0.60  

```go
beh := behaviorScan{
		Turns:             10,
		DumbzoneTurns:     2,
		TaskSpawns:        3,
		SessionsScanned:   3,
		SessionsWithTasks: 1,
	}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/store/practice_mapping_test.go:58*

### TestPlanDetectsDriftUntilCallerStartsNewEpoch

**Category**: instantiation  
**Description**: Test: TestPlanDetectsDriftUntilCallerStartsNewEpoch  
**Confidence**: 0.60  

```go
base := PlanRequest{
		Scope:         "org-a/project-a",
		Epoch:         "conversation-drift",
		ExpectedCalls: 3,
		Profile:       explicitProfile(),
		Segments:      []Segment{{Name: "system", Content: []byte(strings.Repeat("a", 2200)), Tokens: 600, Stable: true, Cacheable: true}
```

*Source: /tmp/caveman-build/caveman/cacheengine/planner_test.go:193*

### TestPlanEconomicsAndEligibilityFailClosed

**Category**: instantiation  
**Description**: Test: TestPlanEconomicsAndEligibilityFailClosed  
**Confidence**: 0.60  

```go
request := PlanRequest{
		Scope: "org-a/project-a", Epoch: "economics", ExpectedCalls: 2, Profile: explicitProfile(),
		Segments: []Segment{{Name: "system", Content: []byte(strings.Repeat("x", 4096)), Tokens: 1024, Stable: true, Cacheable: true}
```

*Source: /tmp/caveman-build/caveman/cacheengine/planner_test.go:223*

### TestUnknownEconomicsAppliesWithoutInventingThreshold

**Category**: instantiation  
**Description**: Test: TestUnknownEconomicsAppliesWithoutInventingThreshold  
**Confidence**: 0.60  

```go
request := PlanRequest{
		Scope: "org-a/project-a", Epoch: "unknown-economics", ExpectedCalls: 3, Profile: profile,
		Segments: []Segment{{Name: "prefix", Content: []byte(strings.Repeat("x", 4096)), Tokens: 1024, Stable: true, Cacheable: true}
```

*Source: /tmp/caveman-build/caveman/cacheengine/planner_test.go:309*

### TestTransformAnthropicKeepSharpAndRecoverable

**Category**: instantiation  
**Description**: Test: TestTransformAnthropicKeepSharpAndRecoverable  
**Confidence**: 0.60  

```go
opts := TransformOptions{CharsPerToken: 2, EmitRecoverable: true}
```

*Source: /tmp/caveman-build/caveman/engine/pixel/transform_anthropic_test.go:84*

### TestWriteLearnSidecarsPersistsZeroMovesAndPrunesToEight

**Category**: instantiation  
**Description**: Test: TestWriteLearnSidecarsPersistsZeroMovesAndPrunesToEight  
**Confidence**: 0.60  

```go
plan := LearnPlan{
		Schema: learnSchema,
		Basis:  learnBasis,
		CaveScore: CaveScore{
			Score: 100,
			Basis: learnBasis,
			Scope: "local_setup",
		}
```

*Source: /tmp/caveman-build/caveman/proxy/internal/store/learn_sidecar_test.go:15*

### TestBenchmarkRouterDeterministicSchedulesUseCanonicalActionOrder

**Category**: instantiation  
**Description**: Test: TestBenchmarkRouterDeterministicSchedulesUseCanonicalActionOrder  
**Confidence**: 0.60  

```go
features := Features{BodyModelRewrite: true}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/benchmark_test.go:15*

### TestBenchmarkRouterDeterministicSchedulesUseCanonicalActionOrder

**Category**: instantiation  
**Description**: Test: TestBenchmarkRouterDeterministicSchedulesUseCanonicalActionOrder  
**Confidence**: 0.60  

```go
ctx := BenchmarkContext{SessionID: "bench-session", TurnIndex: 1}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/benchmark_test.go:16*

### TestBenchmarkRouterDeterministicSchedulesUseCanonicalActionOrder

**Category**: instantiation  
**Description**: Test: TestBenchmarkRouterDeterministicSchedulesUseCanonicalActionOrder  
**Confidence**: 0.60  

```go
randomRouter := BenchmarkRouter{Version: BenchmarkRandomRouterVersion, Policy: BenchmarkPolicy{Enabled: true, SystemArtifactHash: benchmarkArtifactHashFixture, RandomSeed: "seed-v1"}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/benchmark_test.go:28*

### TestBenchmarkRouterFailsClosedOnMissingContract

**Category**: instantiation  
**Description**: Test: TestBenchmarkRouterFailsClosedOnMissingContract  
**Confidence**: 0.60  

```go
features := Features{BodyModelRewrite: true}
```

*Source: /tmp/caveman-build/caveman/proxy/routing/benchmark_test.go:41*

