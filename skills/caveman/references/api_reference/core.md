# API Reference: core.py

**Language**: Python

**Source**: `packages/sdk/python/caveman_cloud/core.py`

---

## Classes

### RetryLoopError

Raised by :class:`RetryLoopBreaker` when an identical tool-call repeats
more times than the configured threshold.

The breaker is a structural safety net: agents that get stuck re-issuing the
same tool call (same name + same arguments) burn tokens without progress.
Rather than letting the loop run, the SDK interrupts it deterministically.

**Inherits from**: RuntimeError

#### Methods

##### __init__(self, signature: str, repeats: int, threshold: int) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| signature | str | - | - |
| repeats | int | - | - |
| threshold | int | - | - |

**Returns**: `None`




### RetryLoopBreaker

Detects and interrupts a repeated identical tool-call loop.

Call :meth:`record` (or :meth:`guard`) before each tool invocation with the
tool name and arguments. When the SAME (name, arguments) signature repeats
consecutively more than ``threshold`` times, :meth:`record` raises
:class:`RetryLoopError`. Any different call resets the streak.

Mirrors the TypeScript ``RetryLoopBreaker``: same field names, same
threshold semantics (the breaker fires on the call that would be the
``threshold + 1``-th consecutive identical call).

**Inherits from**: (none)

#### Methods

##### signature(self, name: str, arguments: Any) → str

Canonical signature for a tool call (name + sorted-key JSON args).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |
| arguments | Any | - | - |

**Returns**: `str`


##### record(self, name: str, arguments: Any) → None

Record a tool call. Raises :class:`RetryLoopError` once an identical
call has repeated past the threshold. A different call resets the streak.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |
| arguments | Any | - | - |

**Returns**: `None`


##### guard(self, name: str, arguments: Any, fn: Callable[[], Any]) → Any

Record the call (may raise) then invoke ``fn``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |
| arguments | Any | - | - |
| fn | Callable[[], Any] | - | - |

**Returns**: `Any`


##### reset(self) → None

Clear the streak (e.g. when starting a new task).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`




### Job

Reserved result shape for future durable async-job execution.

**Inherits from**: (none)

#### Methods

##### done(self) → bool

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### ok(self) → bool

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`




### ToolSearchResult

Result from a server-side tool-search call.

**Inherits from**: (none)

#### Methods

##### saved_tokens(self) → int

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### reduction_pct(self) → float

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `float`




### CompressResult

Result of a :meth:`Cave.compress` call — the Engine's compression report.

``basis`` is always ``"inferred"``: the SDK never emits ``verified`` (that is
earned only by the Cloud ``active`` path). On any transport/parse problem the
call is a fail-closed pass-through (``output`` is the original input,
``ratio`` is ``0.0``, ``recovery_handle`` is ``None``).

Mirrors the TypeScript ``CompressResult`` (same field names).

**Inherits from**: (none)



### ContextPackItem

One caller-owned context fragment considered by ``cave.context.pack``.

**Inherits from**: (none)



### ContextPackOptions

Budget and scoring options for connected-only context packing.

**Inherits from**: (none)



### ContextPackResult

Selected caller-owned context plus inferred token accounting.

**Inherits from**: (none)



### AssemblySlot

One author-declared request fragment for :meth:`Cave.assemble`.

**Inherits from**: (none)



### AssembleOptions

Input contract for the client-pure cache-optimal request assembler.

**Inherits from**: (none)



### AssemblyResult

Result from :meth:`Cave.assemble`; every token figure is inferred.

**Inherits from**: (none)



### AssemblyStabilityError

Stable/session content changed inside its declared lifetime.

**Inherits from**: ValueError

#### Methods

##### __init__(self, slot_id: str) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| slot_id | str | - | - |

**Returns**: `None`




### _AssembledRequest

Provider request carrying local-only Caveman assembly metadata.

**Inherits from**: (none)



### CaveTool

A tool descriptor for inclusion in the tool catalog.

**Inherits from**: (none)



### TaskProfile

The single human-editable object controlling cave-auto routing for a
workflow (spec R14). Field names are the snake_case wire names — identical to
the Go ``policy.TaskProfile`` JSON tags and the TypeScript ``TaskProfile``
interface. Editing one is a policy publish; there is no ML in the loop.

``alpha`` is the 0–10 cost/quality dial (0 = most capable in the passing set,
10 = cheapest). Every field is optional; an absent profile means baseline
pass-through.

**Inherits from**: (none)



### Cave

**Inherits from**: (none)

#### Methods

##### __post_init__(self) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### trace(self, workflow: str | None = None, tags: dict[str, str] | None = None) → Iterator['Trace']

Run a block inside a trace.

The trace allocates a ``trace_id`` (32 lowercase hex) and a root
``span_id`` (16 lowercase hex) with the same RNG the OTel exporter uses.
Every provider call made through the trace carries them as
``x-cave-trace-id`` + ``x-cave-parent-span-id``, and ``trace.exporter()``
reuses the same trace id — so the gateway's request rows and the SDK's
own spans join into one trace.

``trace_id`` / ``span_id`` continue an inbound trace; a value that is not
the exact non-zero hex shape is replaced by a fresh one rather than put
on the wire. Mirrors the TypeScript ``Cave.trace``.

**Decorators**: `@contextmanager`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| workflow | str | None | None | - |
| tags | dict[str, str] | None | None | - |

**Returns**: `Iterator['Trace']`


##### jobs(self) → 'JobsClient'

Reserved async-job surface; methods fail locally without network I/O.

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `'JobsClient'`


##### shared_context(self) → '_SharedContext'

Session-keyed multi-agent shared context. Mirrors the TS ``cave.sharedContext``.

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `'_SharedContext'`


##### context(self) → '_ContextPacking'

Connected-only context selection. Mirrors TypeScript ``cave.context``.

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `'_ContextPacking'`


##### prompts(self) → '_Prompts'

Prompt-snippet helpers. Mirrors the TS ``cave.prompts`` namespace.

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `'_Prompts'`


##### retry_loop_breaker(self, threshold: int = 3) → RetryLoopBreaker

A fresh :class:`RetryLoopBreaker` that interrupts a repeated identical
tool-call loop after ``threshold`` consecutive repeats.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| threshold | int | 3 | - |

**Returns**: `RetryLoopBreaker`


##### assemble(self, options: AssembleOptions) → AssemblyResult

Build a provider request with stable/session content above volatile.

Pure client-side: no account and no network call. The hash ledger is
in-process and scoped by ``session_id``; deterministic slot content
across processes remains the builder's obligation.

``emit_cache_hints="gateway"`` (default) emits no provider hint so the
gateway optimizer retains attribution. ``"self"`` places provider
hints for direct calls but mints nothing.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| options | AssembleOptions | - | - |

**Returns**: `AssemblyResult`


##### openai(self, upstream_key: str | None = None) → 'Provider'

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| upstream_key | str | None | None | - |

**Returns**: `'Provider'`


##### anthropic(self, upstream_key: str | None = None) → 'Provider'

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| upstream_key | str | None | None | - |

**Returns**: `'Provider'`


##### gemini(self, upstream_key: str | None = None) → 'Provider'

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| upstream_key | str | None | None | - |

**Returns**: `'Provider'`


##### bedrock(self, region: str) → dict[str, Any]

Describe the first-party Bedrock gateway surface.

Runtime is the default. Mantle is an explicit opt-in descriptor. This
method performs no network request and carries no AWS secret.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| region | str | - | - |

**Returns**: `dict[str, Any]`


##### vertex(self, upstream_key: str | None = None) → 'Provider'

Vertex AI client proxied through the gateway (``/vertex`` prefix).

Routes Google Gemini and Anthropic Claude calls through Caveman for
metering. ``upstream_key`` is a Google OAuth2 access token (e.g. from
``gcloud auth print-access-token`` or Application Default Credentials);
the gateway forwards it as ``Authorization: Bearer …``. Mirrors the
TypeScript ``Cave.vertex``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| upstream_key | str | None | None | - |

**Returns**: `'Provider'`


##### exporter(self) → 'OTelExporter'

Create a one-call OTel exporter bound to this Cave's gateway config.

The exporter ships spans to the gateway's OTLP endpoint
(``POST {base_url}/v1/traces``) with Caveman headers
(``x-cave-api-key`` / ``x-cave-agent`` / ``x-cave-workflow``) so that
``record_span()`` + ``export()`` land rows in ``caveman.spans`` without
any external OpenTelemetry wiring.

Args:
    service_name: ``service.name`` resource attribute; defaults to the
        Cave agent slug (the gateway falls back to it for the agent label).

Returns:
    An :class:`OTelExporter` whose spans inherit this Cave's
    ``api_key`` / ``base_url`` / ``agent`` / ``default_workflow``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `'OTelExporter'`


##### tools(self, catalog: list[CaveTool]) → '_ToolsHandle'

Build a tool-catalog handle with server-side search via
``/sdk/v1/tool-search``.

``strategy="all"``      → ``initial`` is the whole catalog; ``search()``
                          still calls the server.
``strategy="deferred"`` → ``initial`` is the ``always_load`` tools plus
                          the first ``initial_tool_count`` of the catalog
                          (a subset sent on the first turn); ``search()``
                          calls the server to load relevant tools on demand.

Returns a handle with ``.strategy``, ``.initial`` (a ``list[CaveTool]``),
and ``.search(query, *, max_tools, context, workflow, ranker)`` which
hits the gateway and returns a :class:`ToolSearchResult`. Mirrors the
TypeScript ``cave.tools({ catalog, strategy })``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| catalog | list[CaveTool] | - | - |

**Returns**: `'_ToolsHandle'`


##### tool_search(self, tools: list[CaveTool], query: str) → ToolSearchResult

POST the tool catalog + query to the gateway's /sdk/v1/tool-search endpoint.

Returns a ToolSearchResult that includes the reduced tool list and the
sent_schema_tokens vs full_schema_tokens so callers can measure reduction.

Args:
    tools: Full tool catalog to filter.
    query: The user's current intent / task description.
    context: Optional additional context for the search.
    max_tools: Optional cap on returned tools (server default applies if omitted).
    workflow: Override workflow label (defaults to Cave.default_workflow).
    ranker: Optional ranking algorithm passed through to the gateway
        ("bm25" default, or "embeddings" when the gateway has an embedding
        provider wired). The SDK passes it through; it never computes
        similarity itself.
    session_id: Optional server-side tool session id for later
        provider-request reinjection.

Returns:
    ToolSearchResult with .tools, .sent_schema_tokens, .full_schema_tokens,
    .deferred_count, .method, .saved_tokens, .reduction_pct.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tools | list[CaveTool] | - | - |
| query | str | - | - |

**Returns**: `ToolSearchResult`


##### compress(self, payload: str) → CompressResult

Compress a payload through the Engine (``POST /sdk/v1/compress``).

The SDK is **not** the compressor — it delegates to the Engine and maps
the report; it never reimplements a compressor (that would fork behavior
across surfaces).

**Fail-closed.** On any transport or parse problem the call passes through:
``output`` is the original ``payload`` unchanged, ``ratio`` is ``0.0``,
and there is no ``recovery_handle``. The SDK never rewrites bytes itself
and never claims a saving it did not get back from the Engine. ``basis``
is always ``"inferred"``.

Mirrors the TypeScript ``Cave.compress``.

Args:
    payload: The raw payload to compress.
    content_type: Optional content-type hint for the Engine's detector.

Returns:
    A :class:`CompressResult`.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| payload | str | - | - |

**Returns**: `CompressResult`


##### cave_plan(self) → dict[str, Any]

Read this project's Cave Plan machine-readably (``GET /sdk/v1/cave-plan``).

Authed by the project key's ``plan:read`` scope. Returns the
project-scope plan verbatim as a dict whose keys are the snake_case wire
fields — identical to control-api and the TypeScript ``cave.cavePlan()``:
``headline`` / ``headroom_by_class`` / ``moves`` / ``no_signal`` /
``methodology`` / ``scope`` / ``project_id`` (plus optional ``as_of`` /
``detectors_last_ran`` / ``diagnostics`` / ``mode_note``). Every dollar
figure is ``inferred`` and a PER-DAY rate; the SDK passes them through
verbatim and never re-derives or re-projects them (no monthly, no
``verified``).

This is a gateway-owned project-key read, so it always targets
``base_url``. ``control_url`` is reserved for control-api ``/api/v1/*``
surfaces and cannot redirect this method to a route that service lacks.
A non-200 raises ``urllib.error.HTTPError`` (mirrors the TS SDK's throw)
— there is no byte-safe pass-through here.

Mirrors the TypeScript ``Cave.cavePlan``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, Any]`


##### runtime_policy(self) → 'RuntimePolicyClient'

A local runtime-policy client for this project.

The client pulls the project's published policy bundle
(``GET /sdk/v1/runtime-policy``) and answers :meth:`RuntimePolicyClient.decide`
locally — no network call, no blocking, on the agent's hot path. Mirrors
the TypeScript ``cave.runtimePolicy``.

Args:
    public_key: Optional base64 raw 32-byte Ed25519 key to pin. When set,
        a bundle MUST carry a signature that verifies against it. A value
        that is not a base64 32-byte key raises :class:`ValueError` here
        rather than yielding a client that rejects every bundle.
    auto_refresh_seconds: Optional background refresh interval (daemon
        thread). Off by default; the caller otherwise drives
        :meth:`RuntimePolicyClient.refresh`.
    kill_env: Environment variable consulted on every decision as a local
        brake (default ``CAVEMAN_POLICY_KILL``).
    workflow: Workflow label for the refresh request (defaults to
        ``Cave.default_workflow``).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `'RuntimePolicyClient'`




### _SharedContext

Session-keyed multi-agent shared context: one agent ``put``s the full handoff
context under a session key (``POST /sdk/v1/shared-context``); a peer agent in the
same project ``get``s it back byte-exact (``GET /sdk/v1/shared-context/{key}``). The
gateway is tenant-scoped — the project namespaces the key. Mirrors the TS
``cave.sharedContext``.

**Inherits from**: (none)

#### Methods

##### __init__(self, cave: 'Cave') → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cave | 'Cave' | - | - |

**Returns**: `None`


##### put(self, session_key: str, content: str) → dict[str, Any]

Store ``content`` under ``session_key`` for the authenticated project.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| session_key | str | - | - |
| content | str | - | - |

**Returns**: `dict[str, Any]`


##### get(self, session_key: str) → dict[str, Any]

Recover the full handoff context byte-exact for ``session_key``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| session_key | str | - | - |

**Returns**: `dict[str, Any]`


##### _call(self, path: str, body: dict[str, Any] | None, method: str) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| path | str | - | - |
| body | dict[str, Any] | None | - | - |
| method | str | - | - |

**Returns**: `dict[str, Any]`




### _ContextPacking

Connected-only context selector over caller-owned items.

``pack`` decides what enters the model window. Cache-optimal assembly
decides where selected content sits relative to a cache breakpoint; callers
may use both. Packing never writes CCR and never runs in local wrap.

**Inherits from**: (none)

#### Methods

##### __init__(self, cave: 'Cave') → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cave | 'Cave' | - | - |

**Returns**: `None`


##### pack(self, query: str, items: list[ContextPackItem], options: ContextPackOptions) → ContextPackResult

POST context candidates to ``/sdk/v1/context/pack``.

On transport or malformed-report failure, returns every caller-owned
item with zero inferred savings and no deferred IDs.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| query | str | - | - |
| items | list[ContextPackItem] | - | - |
| options | ContextPackOptions | - | - |

**Returns**: `ContextPackResult`




### Trace

**Inherits from**: (none)

#### Methods

##### __init__(self, cave: Cave, workflow: str, tags: dict[str, str]) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cave | Cave | - | - |
| workflow | str | - | - |
| tags | dict[str, str] | - | - |

**Returns**: `None`


##### exporter(self) → 'OTelExporter'

An OTel exporter bound to this trace: spans recorded without an
explicit ``trace_id`` inherit this trace's, so SDK spans and the
gateway's request rows land in the same trace. Repeated calls for one
service return the same buffer, including runtime-policy decision
spans, so callers can flush them. Mirrors the TypeScript
``CaveTrace.exporter``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `'OTelExporter'`


##### tool(self, name: str, options: dict[str, Any], fn: Callable[[], Any]) → Any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |
| options | dict[str, Any] | - | - |
| fn | Callable[[], Any] | - | - |

**Returns**: `Any`


##### _emit_tool_event(self, name: str, options: dict[str, Any], outcome: Literal['ok', 'error'], sequence: int, start_ns: int) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |
| options | dict[str, Any] | - | - |
| outcome | Literal['ok', 'error'] | - | - |
| sequence | int | - | - |
| start_ns | int | - | - |

**Returns**: `None`


##### page_artifact(self, value: Any, options: dict[str, Any]) → Any

Store a large payload to ``/sdk/v1/artifacts``, returning a compact
stub the model can later expand.

``strategy="verbatim"`` bypasses storage and returns ``value`` unchanged.
Mirrors the TypeScript ``trace.artifacts.page`` (same wire body, incl.
``workflow``, and same stub format). :attr:`artifacts` exposes ``page``
as the mirror-named entry point; ``page_artifact`` stays as a
backwards-compatible alias.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| value | Any | - | - |
| options | dict[str, Any] | - | - |

**Returns**: `Any`


##### get_artifact(self, artifact_id: str) → Any

Retrieve and JSON-decode one artifact produced by :meth:`page_artifact`.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| artifact_id | str | - | - |

**Returns**: `Any`


##### artifacts(self) → '_Artifacts'

Artifact handle mirroring the TS ``trace.artifacts`` namespace.

``trace.artifacts.page(value, options)`` is the mirror-named entry point
for :meth:`page_artifact`; both hit ``/sdk/v1/artifacts`` with an
identical wire body.

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `'_Artifacts'`


##### checkpoint(self, messages: list[Any], options: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| messages | list[Any] | - | - |
| options | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`


##### expand(self, source_ref: str) → dict[str, Any]

Reverse a checkpoint ``source_ref`` back into the original context.

GETs ``/sdk/v1/checkpoints/{source_ref}/expand``; the gateway returns the
stored ``{source_ref, version, messages, checkpoint}``. This is the other
half of :meth:`checkpoint` — reversibility is mandatory: a checkpoint
that cannot be expanded is a bug. Mirrors the TypeScript
``trace.context.expand``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| source_ref | str | - | - |

**Returns**: `dict[str, Any]`


##### _request(self, path: str, body: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| path | str | - | - |
| body | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`


##### _get(self, path: str) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| path | str | - | - |

**Returns**: `dict[str, Any]`




### Provider

**Inherits from**: (none)

#### Methods

##### __init__(self, cave: Cave, prefix: str, upstream_key: str | None, workflow: str | None = None) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cave | Cave | - | - |
| prefix | str | - | - |
| upstream_key | str | None | - | - |
| workflow | str | None | None | - |

**Returns**: `None`


##### create(self, path: str, body: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| path | str | - | - |
| body | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`


##### raw(self, path: str, body: dict[str, Any]) → dict[str, Any]

Escape hatch: POST a raw body to ``{prefix}{path}`` through the
gateway with the standard Caveman headers. Mirrors the TS provider
client's ``raw`` fetch — for native provider paths the typed helpers
don't cover.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| path | str | - | - |
| body | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`




### _Create

**Inherits from**: (none)

#### Methods

##### __init__(self, provider: Provider, path: str) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| provider | Provider | - | - |
| path | str | - | - |

**Returns**: `None`


##### create(self, body: dict[str, Any]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| body | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`




### _Artifacts

Mirror of the TS ``trace.artifacts`` namespace.

``page(value, options)`` delegates to :meth:`Trace.page_artifact` so the two
SDKs expose the same ``artifacts.page`` capability over the identical wire.

**Inherits from**: (none)

#### Methods

##### __init__(self, trace: 'Trace') → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| trace | 'Trace' | - | - |

**Returns**: `None`


##### page(self, value: Any, options: dict[str, Any]) → Any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| value | Any | - | - |
| options | dict[str, Any] | - | - |

**Returns**: `Any`


##### get(self, artifact_id: str) → Any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| artifact_id | str | - | - |

**Returns**: `Any`




### _ToolsHandle

A tool-catalog handle returned by :meth:`Cave.tools`.

Holds the catalog + the computed ``initial`` subset and exposes
:meth:`search`, which calls the gateway's ``/sdk/v1/tool-search`` with the
FULL catalog (not just ``initial``). Mirrors the object returned by the TS
``cave.tools({ catalog, strategy })``.

**Inherits from**: (none)

#### Methods

##### __init__(self, cave: Cave, catalog: list[CaveTool], strategy: str, initial: list[CaveTool], max_loaded_tools: int | None) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cave | Cave | - | - |
| catalog | list[CaveTool] | - | - |
| strategy | str | - | - |
| initial | list[CaveTool] | - | - |
| max_loaded_tools | int | None | - | - |

**Returns**: `None`


##### search(self, query: str) → ToolSearchResult

Search the full catalog via the gateway's ``/sdk/v1/tool-search``
endpoint. Returns a :class:`ToolSearchResult` with the reduced tool list
and token counts. ``ranker`` is forwarded verbatim; the SDK never
computes similarity itself.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| query | str | - | - |

**Returns**: `ToolSearchResult`




### _Prompts

Prompt-snippet helpers. Mirrors the TS ``cave.prompts`` namespace.

**Inherits from**: (none)

#### Methods

##### internal_brevity(self) → str

Return an internal output-style instruction snippet.

``style`` is one of ``"technical-concise"`` | ``"caveman"`` | ``"none"``;
``"none"`` yields the empty string. Mirrors the TS
``cave.prompts.internalBrevity`` (same output for the same inputs).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`




### AsyncJobsUnavailableError

Delayed job execution is unavailable and no job was submitted.

**Inherits from**: RuntimeError

#### Methods

##### __init__(self) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`




### JobsClient

Reserved async-job surface that fails locally before network I/O.

**Inherits from**: (none)

#### Methods

##### __init__(self, cave: Cave) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cave | Cave | - | - |

**Returns**: `None`


##### submit(self, body: dict[str, Any]) → Job

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| body | dict[str, Any] | - | - |

**Returns**: `Job`


##### status(self, job_id: str) → Job

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| job_id | str | - | - |

**Returns**: `Job`


##### cancel(self, job_id: str) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| job_id | str | - | - |

**Returns**: `dict[str, Any]`


##### wait(self, job_id: str) → Job

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| job_id | str | - | - |

**Returns**: `Job`


##### submit_and_wait(self, body: dict[str, Any]) → Job

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| body | dict[str, Any] | - | - |

**Returns**: `Job`




### OTelSpan

A single span buffered by :class:`OTelExporter`.

Mirrors OTLP/JSON span shape gateway ingests at
``POST /v1/traces``. GenAI semantic-convention attributes
(``gen_ai.*``) are produced from the structured fields below; anything in
``attributes`` is passed through verbatim.

**Inherits from**: (none)

#### Methods

##### to_otlp(self) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, Any]`




### OTelExporter

One-call OTel exporter that ships spans to the gateway OTLP endpoint.

Build with :meth:`Cave.exporter`. Record spans with :meth:`record_span`
(GenAI fields are mapped to ``gen_ai.*`` semantic-convention attributes),
then :meth:`export` POSTs the buffered batch to
``{base_url}/v1/traces`` and clears the buffer. Stdlib-only: the
OTLP/JSON payload is built by hand and sent with ``urllib``.

**Inherits from**: (none)

#### Methods

##### __init__(self, cave: Cave) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cave | Cave | - | - |

**Returns**: `None`


##### pending(self) → int

Number of spans buffered and not yet exported.

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### new_trace_id(self) → str

A fresh 16-byte (32-hex) trace id.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### new_span_id(self) → str

A fresh 8-byte (16-hex) span id.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### record_span(self, name: str) → OTelSpan

Buffer a span, mapping GenAI fields to ``gen_ai.*`` attributes.

Returns the :class:`OTelSpan` (with generated ids) so callers can chain
child spans via ``parent_span_id=span.span_id``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |

**Returns**: `OTelSpan`


##### build_payload(self) → dict[str, Any]

Build the OTLP/JSON payload for the buffered spans (no network).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, Any]`


##### _build_payload(self, spans: list[OTelSpan]) → dict[str, Any]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| spans | list[OTelSpan] | - | - |

**Returns**: `dict[str, Any]`


##### export(self) → dict[str, Any]

POST buffered spans to standard OTLP/HTTP ``{base_url}/v1/traces``.

Returns the gateway's JSON response (``ok`` / ``spans_accepted`` /
``spans_total`` / ``otel_schema_version``). A no-op returning an empty
``ok`` result when there is nothing buffered.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, Any]`




### PolicyDecision

What the agent should run for one task, decided locally.

``decision`` is ``"execute"`` (the policy's execute workflow), ``"fallback"``
(the policy's declared fallback workflow, which may be None), or
``"baseline"`` (the caller's own path; ``workflow`` is always None).
``reason`` names why — decisions are observability, they measure nothing and
claim nothing.

**Inherits from**: (none)



### RuntimePolicyState

A snapshot of what the client currently holds.

**Inherits from**: (none)



### RuntimePolicyRefresh

The outcome of one :meth:`RuntimePolicyClient.refresh`.

**Inherits from**: (none)



### RuntimePolicyClient

Local runtime-policy client: fetch rarely, decide locally, never block.

:meth:`refresh` pulls the project's published policy bundle over the
gateway's ``GET /sdk/v1/runtime-policy``; :meth:`decide` answers from the
cached bundle with no network call at all, so a policy outage can never
stall an agent — it only means ``baseline``.

Fail-closed throughout: a malformed policy is skipped rather than guessed, a
missing unit key never invents an arm, and the holdout slice is carved first
and forced onto the fallback path (holdout SUPPRESSES; it is never the
riskier variant). Nothing here measures or claims a saving.

Mirrors the TypeScript ``RuntimePolicyClient``.

**Inherits from**: (none)

#### Methods

##### __init__(self, cave: Cave) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cave | Cave | - | - |

**Returns**: `None`


##### kill(self) → None

Latch this client onto the baseline path immediately and locally.

Takes effect on the very next :meth:`decide`; no network round-trip and
no way for a later refresh to undo it.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### close(self) → None

Stop the background refresh thread, if one was started.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### state(self) → RuntimePolicyState

What the client holds right now.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `RuntimePolicyState`


##### refresh(self) → RuntimePolicyRefresh

Fetch the current bundle. Never raises; keeps last-known-good.

A transport failure, a bad signature, an unknown schema version, or a
bundle older than the cached one all leave the previously accepted
bundle in place and report ``ok=False``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `RuntimePolicyRefresh`


##### _accept(self, payload: Any) → RuntimePolicyRefresh

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| payload | Any | - | - |

**Returns**: `RuntimePolicyRefresh`


##### _auto_refresh(self, interval: float) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| interval | float | - | - |

**Returns**: `None`


##### _decode_b64(value: str) → bytes | None

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | str | - | - |

**Returns**: `bytes | None`


##### _decode_key(cls, value: Any) → bytes | None

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| value | Any | - | - |

**Returns**: `bytes | None`


##### decide(self, task_family: str, unit_key: str | None = None, context: dict[str, Any] | None = None, trace: Any = None) → PolicyDecision

Decide what to run for ``task_family``. Synchronous, local, total.

Performs no network I/O and never raises — a garbage context, a broken
policy, or no bundle at all all resolve to an honest baseline/fallback
with a reason. ``unit_key`` is the stable identity an experiment is
assigned on (a task id, a case id — never a random value per call).

Passing ``trace`` (a :class:`Trace` or an :class:`OTelExporter`) buffers
one ``caveman.policy.decision`` span through the SDK's existing exporter;
it opens no new network path and the call stays synchronous either way.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| task_family | str | - | - |
| unit_key | str | None | None | - |
| context | dict[str, Any] | None | None | - |
| trace | Any | None | - |

**Returns**: `PolicyDecision`


##### _kill_env_set(self) → bool

True when the kill environment variable is set to anything but an
explicit off value. A brake must be easy to pull, so an unrecognized
value counts as ON; ``0``/``false``/``no``/``off``/empty do not.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### _decide(self, task_family: Any, unit_key: Any, context: Any) → PolicyDecision

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| task_family | Any | - | - |
| unit_key | Any | - | - |
| context | Any | - | - |

**Returns**: `PolicyDecision`


##### _valid_arms(experiment: dict[str, Any]) → list[tuple[str, float]] | None

The experiment's arms, or None when the config cannot be trusted.

An arm named ``holdout`` is a config error: the holdout slice is minted
by ``holdout_frac`` alone and must never also be a declared variant.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| experiment | dict[str, Any] | - | - |

**Returns**: `list[tuple[str, float]] | None`


##### _emit_span(self, decision: PolicyDecision, trace: Any) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| decision | PolicyDecision | - | - |
| trace | Any | - | - |

**Returns**: `None`




## Functions

### _strict_non_negative_int(value: Any) → int | None

Accept JSON integers only; reject bools, floats, strings, and negatives.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Any | - | - |

**Returns**: `int | None`



### _env_workflow() → str

CAVE_WORKFLOW normalized to the gateway label rule, else the honest default.

**Returns**: `str`



### _normalized_service_url(value: str, name: str) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | str | - | - |
| name | str | - | - |

**Returns**: `str`



### headers(cave: Cave, workflow: str, upstream_key: str | None = None, latency_class: str | None = None, tool_session_id: str | None = None) → dict[str, str]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |
| workflow | str | - | - |
| upstream_key | str | None | None | - |
| latency_class | str | None | None | - |
| tool_session_id | str | None | None | - |

**Returns**: `dict[str, str]`



### _canonical_json(value: Any) → str

Stable compact UTF-8 JSON shared by assembly hashes and cloned output.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Any | - | - |

**Returns**: `str`



### _clone_canonical(value: Any) → Any

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Any | - | - |

**Returns**: `Any`



### _assembly_text(value: Any) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Any | - | - |

**Returns**: `str`



### _sha256_hex(value: str) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | str | - | - |

**Returns**: `str`



### _otlp_kv(key: str, value: Any) → dict[str, Any]

Encode one attribute as an OTLP/JSON KeyValue.

Ints become ``intValue`` (proto3 int64 → JSON string), bools ``boolValue``,
floats ``doubleValue``; everything else is stringified into ``stringValue``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| key | str | - | - |
| value | Any | - | - |

**Returns**: `dict[str, Any]`



### _rand_hex(n_bytes: int) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| n_bytes | int | - | - |

**Returns**: `str`



### _is_hex_id(value: Any, hex_len: int) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Any | - | - |
| hex_len | int | - | - |

**Returns**: `bool`



### _normalize_trace_id(value: str | None) → str

A caller-supplied trace id, canonicalized to lowercase, or a fresh one
when it is not exactly 32 hex characters and non-zero. An invalid id is never put on
the wire — the gateway would drop it anyway, and a malformed id silently
breaks the join. Mirrors the TypeScript ``normalizeTraceId``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | str | None | - | - |

**Returns**: `str`



### _normalize_span_id(value: str | None) → str

A caller-supplied span id, canonicalized to lowercase, or a fresh valid id.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | str | None | - | - |

**Returns**: `str`



### _normalize_parent_span_id(value: str | None) → str

Canonicalize a parent id; malformed values become root spans because causality cannot be regenerated.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | str | None | - | - |

**Returns**: `str`



### otlp_headers(cave: Cave) → dict[str, str]

Headers for the OTLP trace endpoint.

Uses ``x-cave-api-key`` (the gateway's primary key header) plus the agent /
workflow labels gateway reads on ``/v1/traces``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cave | Cave | - | - |

**Returns**: `dict[str, str]`



### _ed_recover_x(y: int, sign: int) → int | None

The x coordinate for a compressed point, or None when y is off-curve.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| y | int | - | - |
| sign | int | - | - |

**Returns**: `int | None`



### _ed_add(pt1: tuple[int, int, int, int], pt2: tuple[int, int, int, int]) → tuple[int, int, int, int]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pt1 | tuple[int, int, int, int] | - | - |
| pt2 | tuple[int, int, int, int] | - | - |

**Returns**: `tuple[int, int, int, int]`



### _ed_double(pt: tuple[int, int, int, int]) → tuple[int, int, int, int]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pt | tuple[int, int, int, int] | - | - |

**Returns**: `tuple[int, int, int, int]`



### _ed_scalarmult(pt: tuple[int, int, int, int], scalar: int) → tuple[int, int, int, int]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pt | tuple[int, int, int, int] | - | - |
| scalar | int | - | - |

**Returns**: `tuple[int, int, int, int]`



### _ed_base_point() → tuple[int, int, int, int]

**Returns**: `tuple[int, int, int, int]`



### _ed_encode(pt: tuple[int, int, int, int]) → bytes

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pt | tuple[int, int, int, int] | - | - |

**Returns**: `bytes`



### _ed_decode(data: bytes) → tuple[int, int, int, int] | None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| data | bytes | - | - |

**Returns**: `tuple[int, int, int, int] | None`



### _ed25519_verify(signature: bytes, message: bytes, public_key: bytes) → bool

True when ``signature`` is a valid Ed25519 signature of ``message``.

Verification only — this function never signs and holds no secret. Any
malformed input returns False (fail closed), never an exception.

Deliberately cofactorless (no multiply-by-8 check) and it does NOT reject
small-order or identity public keys: the signer is Go's ``crypto/ed25519``,
and this verifier must accept exactly what that library produces and
rejects. "Hardening" it here would make the SDK disagree with the signer on
valid bundles, which is a worse failure than the (unreachable-in-practice)
small-order key it would exclude. Change it only alongside the Go side.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| signature | bytes | - | - |
| message | bytes | - | - |
| public_key | bytes | - | - |

**Returns**: `bool`



### policy_unit_fraction() → float

Deterministic [0,1) fraction for a tuple of keys — the experiment
assignment unit.

Byte-for-byte port of the Go ``shared/platform/sampling.Fraction``: one
SHA-256 over each key preceded by an 8-byte big-endian prefix carrying the
key's UTF-8 byte length, then the first 8 digest bytes read big-endian,
shifted right 11 and divided by 2^53. The length prefix is what keeps
``("ab","c")`` and ``("a","bc")`` distinct.

Public so a caller can reproduce an assignment without a decision, and so
the cross-language fixtures can pin this port bit-for-bit. Mirrors the
TypeScript ``policyUnitFraction``; the ``assignment_vectors`` in
``public/sdk/parity/runtime-policy.fixtures.json`` are the authority for
every value this returns (exact float equality, including the empty-unit-key
vector that :meth:`RuntimePolicyClient.decide` refuses to assign on).

**Returns**: `float`



### _policy_number(value: Any) → float | None

A real finite number, or None. ``bool`` is not a number (it is an ``int``
subclass in Python, and a guard must never compare True against 1).

A Python ``int`` too large for a float (JSON has no bound; JavaScript parses
the same literal to ``Infinity``) is not comparable either — ``float()``
raises ``OverflowError`` and the value is reported as non-numeric rather than
escaping as an exception.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Any | - | - |

**Returns**: `float | None`



### _policy_scalar_kind(value: Any) → str | None

The scalar kind of ``value`` — ``"string"``, ``"boolean"``, ``"number"``
— or None when it is not a comparable scalar at all.

``int`` and ``float`` are ONE kind; a ``bool`` is NEVER a number; lists,
dicts, None, NaN/Inf and out-of-range ints are not scalars. Mirrors the
TypeScript ``sameScalarKind``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Any | - | - |

**Returns**: `str | None`



### _policy_same_scalar_kind(left: Any, right: Any) → bool

True only when both values are comparable scalars of the same kind.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| left | Any | - | - |
| right | Any | - | - |

**Returns**: `bool`



### _policy_equal(left: Any, right: Any) → bool

Same-kind scalar equality: 1 == 1.0, and nothing else is ever coerced.

A type mismatch is False in BOTH directions (see ``ne`` in
:func:`_policy_guard_passes`); lists, dicts and None never equal anything.
Mirrors the TypeScript ``scalarEquals``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| left | Any | - | - |
| right | Any | - | - |

**Returns**: `bool`



### _policy_non_empty_str(value: Any) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Any | - | - |

**Returns**: `bool`



### _policy_guard_passes(condition: Any, context: Any) → bool

Evaluate one ``applies_when`` condition. Anything unclear is False.

Unknown op, absent context field, type mismatch, or an ``in`` whose value is
not a list all fail the condition — a guard never guesses its way to true.
A guard never fails OPEN either: ``ne`` on a type mismatch is False, not
True. The shared ``guard_cases`` in
``public/sdk/parity/runtime-policy.fixtures.json`` are the authority.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| condition | Any | - | - |
| context | Any | - | - |

**Returns**: `bool`



### _policy_is_structural(policy: Any) → bool

A document the client is willing to act on at all.

Missing id / task_family / execute.workflow, or an ``applies_when`` that is
not a list of objects, makes the document unusable — it is skipped rather
than repaired.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| policy | Any | - | - |

**Returns**: `bool`



### _policy_opaque_payload(policy: dict[str, Any]) → tuple[dict[str, Any] | None, list[str] | None, list[dict[str, Any]] | None]

The policy's ``budget`` / ``verify`` / ``escalation`` for the caller.

Opaque pass-through: the SDK hands these to the caller and never acts on
them. A wrong-shaped container becomes None, and list entries are filtered
to well-typed members (``verify`` to strings, ``escalation`` to objects) —
mirroring the TS SDK, never repairing a value.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| policy | dict[str, Any] | - | - |

**Returns**: `tuple[dict[str, Any] | None, list[str] | None, list[dict[str, Any]] | None]`



### _policy_fallback_workflow(policy: dict[str, Any]) → str | None

The declared fallback workflow, or None for the customer's own baseline.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| policy | dict[str, Any] | - | - |

**Returns**: `str | None`



### _policy_int(value: Any) → int | float | None

A bundle counter (``policy_version`` / ``sequence``), or None.

JSON has one number type, so a publisher may emit ``7`` or ``7.0`` for the
same counter. Require a non-negative integer inside JavaScript's safe range
so Python and TypeScript order every bundle identically. Booleans are
excluded — ``True`` is not version 1.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Any | - | - |

**Returns**: `int | float | None`



### _policy_span_sink(trace: Any) → Any

Resolve a decision-span sink from whatever the caller passed.

An :class:`OTelExporter` is used directly. A :class:`Trace` is resolved to a
trace-bound exporter memoized on that trace, so repeated decisions in one
trace batch into a single caller-reachable buffer instead of minting one
exporter per call.
Anything else (or nothing) means no emission.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| trace | Any | - | - |

**Returns**: `Any`



### passthrough() → CompressResult

**Returns**: `CompressResult`



### passthrough() → ContextPackResult

**Returns**: `ContextPackResult`



### baseline(reason: str) → PolicyDecision

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| reason | str | - | - |

**Returns**: `PolicyDecision`



### applied(decision: str, reason: str, workflow: str | None) → PolicyDecision

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| decision | str | - | - |
| reason | str | - | - |
| workflow | str | None | - | - |

**Returns**: `PolicyDecision`



### complete_awaitable() → Any

**Async function**

**Returns**: `Any`


