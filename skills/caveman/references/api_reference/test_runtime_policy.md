# API Reference: test_runtime_policy.py

**Language**: Python

**Source**: `packages/sdk/python/tests/test_runtime_policy.py`

---

## Functions

### _sign_bundle(bundle: str) → dict[str, Any]

Sign ``bundle`` with the fixture's ``signing_test_seed_hex``.

Test-only: the SDK is a verifier and holds no signing key. RFC 8032 §5.1.6
over the module's own group arithmetic, so a test can mint a validly signed
bundle whose CONTENTS the client will still reject (schema, sequence) —
which is the only way to observe when the trust-on-first-use pin is stored.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| bundle | str | - | - |

**Returns**: `dict[str, Any]`



### _make_cave() → Cave

**Returns**: `Cave`



### _fake_response(data: Any) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | Any | - | - |

**Returns**: `MagicMock`



### _signed_payload(bundle: str = BUNDLE) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| bundle | str | BUNDLE | - |

**Returns**: `dict[str, Any]`



### _unsigned_payload(bundle: str = KILL_BUNDLE) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| bundle | str | KILL_BUNDLE | - |

**Returns**: `dict[str, Any]`



### _refresh_with(client: RuntimePolicyClient, payload: Any, captured: list[dict[str, Any]] | None = None) → Any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| client | RuntimePolicyClient | - | - |
| payload | Any | - | - |
| captured | list[dict[str, Any]] | None | None | - |

**Returns**: `Any`



### _loaded_client(payload: Any = None) → RuntimePolicyClient

A client holding the fixture bundle (signature verified against the pin).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| payload | Any | None | - |

**Returns**: `RuntimePolicyClient`



### test_fetch_wire_matches_the_fixture() → None

**Returns**: `None`



### test_fetch_state_matches_the_fixture() → None

**Returns**: `None`



### _signature_case(name: str) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | str | - | - |

**Returns**: `dict[str, Any]`



### test_signature_case_pinned_key_verifies() → None

**Returns**: `None`



### test_signature_case_tampered_bundle_rejected() → None

**Returns**: `None`



### test_signature_case_unsigned_refused_when_key_pinned() → None

**Returns**: `None`



### test_signature_case_unsigned_accepted_when_nothing_pinned() → None

**Returns**: `None`



### test_every_signature_case_is_covered() → None

**Returns**: `None`



### test_ed25519_verifier_rejects_malformed_inputs() → None

**Returns**: `None`



### test_signature_without_a_usable_public_key_is_unverifiable_and_rejected() → None

**Returns**: `None`



### test_malformed_or_partial_signature_metadata_cannot_downgrade_to_unsigned() → None

**Returns**: `None`



### test_tofu_pins_the_embedded_key_and_refuses_a_later_unsigned_bundle() → None

**Returns**: `None`



### test_tofu_pins_as_soon_as_a_signature_verifies_even_if_the_bundle_is_rejected() → None

The pin is stored the moment the signature verifies — BEFORE the schema
and sequence checks. A validly signed bundle this client refuses on its
contents has still proven which key the server signs with, so it must not
leave the client downgradeable to unsigned.

**Returns**: `None`



### test_the_fixture_signing_seed_matches_the_fixture_public_key() → None

Keeps the test-local signer honest: it must mint the very key the
signature cases pin, or the TOFU test above would prove nothing.

**Returns**: `None`



### test_assignment_vector_fraction_is_bit_identical(vector: dict[str, Any]) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| vector | dict[str, Any] | - | - |

**Returns**: `None`



### test_empty_unit_key_vector_is_reachable_through_the_public_name() → None

The empty-unit-key vector is only reachable through the exported hash:
decide() refuses an empty unit key, so nothing else can pin this fraction.

**Returns**: `None`



### test_assignment_vector_arm_and_propensity(vector: dict[str, Any]) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| vector | dict[str, Any] | - | - |

**Returns**: `None`



### test_weighted_arm_propensity_uses_the_fixtures_float_association() → None

Propensity is ``(1 - holdout) * (weight / total)`` in EXACTLY that
association. ``((1 - holdout) * weight) / total`` is a different float
expression; the fixture's weighted ``exp-w`` vectors exist to catch it.

**Returns**: `None`



### _client_for_case(case: dict[str, Any]) → RuntimePolicyClient

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| case | dict[str, Any] | - | - |

**Returns**: `RuntimePolicyClient`



### test_decision_case(case: dict[str, Any]) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| case | dict[str, Any] | - | - |

**Returns**: `None`



### test_applied_decision_passes_the_opaque_policy_payload_through() → None

**Returns**: `None`



### test_local_kill_latch_wins_over_a_live_bundle() → None

**Returns**: `None`



### test_kill_env_forces_baseline_and_off_values_do_not() → None

**Returns**: `None`



### test_kill_env_name_is_configurable() → None

**Returns**: `None`



### test_sequence_regression_is_rejected() → None

**Returns**: `None`



### test_missing_or_invalid_counters_cannot_replace_last_known_good() → None

**Returns**: `None`



### test_unknown_schema_version_is_rejected() → None

**Returns**: `None`



### test_refresh_failure_keeps_last_known_good() → None

**Returns**: `None`



### test_malformed_response_and_bundle_are_rejected() → None

**Returns**: `None`



### test_refresh_response_is_capped_and_keeps_last_known_good() → None

**Returns**: `None`



### test_an_unusable_pinned_key_raises_at_construction(bad_key: str) → None

A pin that cannot be a 32-byte Ed25519 key is a caller bug, surfaced
immediately — not a client that silently rejects every bundle forever.
Mirrors the TypeScript constructor, which throws on the same input.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| bad_key | str | - | - |

**Returns**: `None`



### test_auto_refresh_thread_polls_and_stops() → None

**Returns**: `None`



### test_decide_never_raises_on_garbage_context(context: Any) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| context | Any | - | - |

**Returns**: `None`



### test_decide_never_raises_on_garbage_task_family_or_unit_key() → None

**Returns**: `None`



### test_boolean_context_values_never_compare_as_numbers() → None

**Returns**: `None`



### _bundle_with_policies(policies: list[Any]) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| policies | list[Any] | - | - |

**Returns**: `str`



### _client_holding(bundle: str) → RuntimePolicyClient

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| bundle | str | - | - |

**Returns**: `RuntimePolicyClient`



### test_structurally_invalid_documents_are_skipped() → None

**Returns**: `None`



### test_disabled_only_match_reports_disabled() → None

**Returns**: `None`



### test_two_matching_policies_are_ambiguous_not_arbitrary() → None

**Returns**: `None`



### test_policy_without_an_experiment_applies_to_everything_past_the_guards() → None

**Returns**: `None`



### test_invalid_experiment_configs_fall_back_and_never_guess_an_arm(experiment: Any) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| experiment | Any | - | - |

**Returns**: `None`



### test_nan_holdout_fraction_falls_back() → None

**Returns**: `None`



### test_guards_failed_still_carries_the_declining_policys_terms() → None

The caller is about to run this policy's fallback, so it still needs the
policy's budget/verify/escalation. Mirrors the TypeScript forDoc, which
attaches them on the guards_failed path too.

**Returns**: `None`



### test_opaque_payload_lists_are_filtered_to_well_typed_members() → None

Mirrors TS forDoc: verify keeps only strings, escalation only objects.
Wrong-typed members are dropped, never repaired.

**Returns**: `None`



### test_an_empty_guard_field_name_fails_closed() → None

Mirrors TS guardPasses: field === "" is refused even when the context
literally contains an empty-string key.

**Returns**: `None`



### test_bundle_counters_accept_integer_valued_json_numbers_only() → None

JSON has one number type: a publisher may emit 7 or 7.0 for the same
counter and the TypeScript mirror accepts both. Booleans and values beyond
JavaScript's safe integer range reject the bundle.

**Returns**: `None`



### test_a_missing_unit_key_outranks_a_broken_experiment() → None

A caller with no stable unit could not be assigned even by a perfect
experiment, so no_unit_key is reported first — matching the TypeScript
order, which checks the unit key before normalizing the experiment.

**Returns**: `None`



### test_fallback_workflow_may_be_the_customer_baseline() → None

**Returns**: `None`



### test_guard_case(case: dict[str, Any]) → None

Every guard case in the shared fixture, evaluated twice: directly against
the evaluator, and end-to-end through decide(). A condition is TRUE only
when both sides are the same scalar kind AND the comparison holds — never
fail-open, in either direction of any operator.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| case | dict[str, Any] | - | - |

**Returns**: `None`



### test_guard_cases_cover_every_supported_operator() → None

**Returns**: `None`



### test_a_context_integer_too_large_for_a_float_is_not_comparable() → None

JSON has no integer bound; JavaScript parses this literal to Infinity and
the guard is false. Python must reach the same answer — a fallback with
guards_failed, never an OverflowError that collapses to policy_unavailable.

**Returns**: `None`



### test_guard_operator_table(op: str, value: Any, actual: Any, expected: bool) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| op | str | - | - |
| value | Any | - | - |
| actual | Any | - | - |
| expected | bool | - | - |

**Returns**: `None`



### _span_attributes(payload: dict[str, Any], index: int = 0) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| payload | dict[str, Any] | - | - |
| index | int | 0 | - |

**Returns**: `dict[str, Any]`



### test_decision_span_rides_the_existing_exporter() → None

**Returns**: `None`



### test_decision_span_through_a_trace_parents_onto_the_trace() → None

**Returns**: `None`



### test_no_trace_means_no_emission_and_a_bad_sink_is_ignored() → None

**Returns**: `None`



### test_decide_performs_no_network_io() → None

**Returns**: `None`



### test_no_money_vocabulary_in_the_decision_surface() → None

**Returns**: `None`



### fake_urlopen(req: Any, timeout: float) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | Any | - | - |
| timeout | float | - | - |

**Returns**: `MagicMock`



### boom(req: Any, timeout: float) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | Any | - | - |
| timeout | float | - | - |

**Returns**: `MagicMock`



### fake_urlopen(req: Any, timeout: float) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | Any | - | - |
| timeout | float | - | - |

**Returns**: `MagicMock`



### explode(req: Any, timeout: float) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | Any | - | - |
| timeout | float | - | - |

**Returns**: `MagicMock`



### fake_export(req: Any, timeout: float) → MagicMock

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| req | Any | - | - |
| timeout | float | - | - |

**Returns**: `MagicMock`


