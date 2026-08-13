# API Reference: native.go

**Language**: Go

**Source**: `cacheengine/native.go`

---

## Functions

### Optimize(ctx: context.Context, request: NativeRequest) → (NativeResult, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| request | NativeRequest | - | - |

**Returns**: `(NativeResult, error)`



### builtinEndpointSupported(unknown: provider, endpoint: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| endpoint | string | - | - |

**Returns**: `bool`



### nativeBodyModelMatches(unknown: provider, model: string, body: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| unknown | provider | - | - |
| model | string | - | - |
| body | []byte | - | - |

**Returns**: `bool`



### cloneNativeRequest(request: NativeRequest) → NativeRequest

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | NativeRequest | - | - |

**Returns**: `NativeRequest`



### validOptimizerIDs(values: []string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | []string | - | - |

**Returns**: `bool`



### builtinProfileCompatible(provider: string, profile: Profile) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| profile | Profile | - | - |

**Returns**: `bool`



### applyAnthropic(ctx: context.Context, request: NativeRequest, profile: Profile) → ([]byte, []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| request | NativeRequest | - | - |
| profile | Profile | - | - |

**Returns**: `([]byte, []string)`



### applyBedrock(ctx: context.Context, request: NativeRequest, profile: Profile) → ([]byte, []string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ctx | context.Context | - | - |
| request | NativeRequest | - | - |
| profile | Profile | - | - |

**Returns**: `([]byte, []string)`



### appendBedrockRolling(body: []byte, endpoint: string) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| endpoint | string | - | - |

**Returns**: `([]byte, bool)`



### nativeStablePrefix(request: NativeRequest) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| request | NativeRequest | - | - |

**Returns**: `([]byte, bool)`



### cacheMarkerAt(provider: string, path: []string, key: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| provider | string | - | - |
| path | []string | - | - |
| key | string | - | - |

**Returns**: `bool`



### pathMatches(path: []string, expected: ...string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | []string | - | - |
| expected | ...string | - | - |

**Returns**: `bool`



### appendTopLevelField(body: []byte, name: string, value: []byte) → ([]byte, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| name | string | - | - |
| value | []byte | - | - |

**Returns**: `([]byte, bool)`



### appendUnique(values: []string, value: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | []string | - | - |
| value | string | - | - |

**Returns**: (none)



### containsStringValue(values: []string, target: string) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| values | []string | - | - |
| target | string | - | - |

**Returns**: `bool`



### validUniqueJSONObject(body: []byte) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |

**Returns**: `bool`



### inspectUniqueJSONObject(body: []byte, provider: string) → (bool, bool)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| body | []byte | - | - |
| provider | string | - | - |

**Returns**: `(bool, bool)`



### inspectUniqueJSONValue(decoder: *json.Decoder, root: bool, depth: int, provider: string, path: []string) → (bool, error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| decoder | *json.Decoder | - | - |
| root | bool | - | - |
| depth | int | - | - |
| provider | string | - | - |
| path | []string | - | - |

**Returns**: `(bool, error)`


