# API Reference: source-graph.ts

**Language**: TypeScript

**Source**: `packages/agent/src/source-graph.ts`

---

## Functions

### expandSourceGraph(root: string, initialFiles: Iterable<string>, includeBareDependencies = true, traversalStopRoots: readonly string[] = [])

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | string | - | - |
| initialFiles | Iterable<string> | - | - |
| includeBareDependencies | None | true | - |
| traversalStopRoots | readonly string[] | [] | - |

**Returns**: (none)



### explicitImportCandidates(base: string, importer: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| base | string | - | - |
| importer | string | - | - |

**Returns**: (none)



### resolveImportOnlyDependency(specifier: string, importer: string)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| specifier | string | - | - |
| importer | string | - | - |

**Returns**: (none)



### dependencyPackageRoot(specifier: string, importer: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| specifier | string | - | - |
| importer | string | - | - |

**Returns**: (none)



### resolvePackageJSON(packageName: string, importer: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| packageName | string | - | - |
| importer | string | - | - |

**Returns**: (none)



### collectPackageClosure(packageRoot: string, files: Set<string>, visitedRoots: Set<string>)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| packageRoot | string | - | - |
| files | Set<string> | - | - |
| visitedRoots | Set<string> | - | - |

**Returns**: (none)



### collectPackageFiles(directory: string, files: Set<string>)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| directory | string | - | - |
| files | Set<string> | - | - |

**Returns**: (none)



### barePackageName(specifier: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| specifier | string | - | - |

**Returns**: (none)



### resolvePackageExport(exportsValue: unknown, subpath: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| exportsValue | unknown | - | - |
| subpath | string | - | - |

**Returns**: (none)



### resolveConditionalExport(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### isRecord(value: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | unknown | - | - |

**Returns**: (none)



### isPathWithin(root: string, candidate: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | string | - | - |
| candidate | string | - | - |

**Returns**: (none)



### esmSourceSpecifiers(source: string, path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| path | string | - | - |

**Returns**: (none)



### typescriptSourceSyntax(source: string, path: string, code: Uint8Array)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| path | string | - | - |
| code | Uint8Array | - | - |

**Returns**: (none)



### typescriptImportEqualsPrefixEnd(source: string, start: number, path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |
| path | string | - | - |

**Returns**: (none)



### typescriptTypeExportSpecifier(source: string, start: number, path: string, code: Uint8Array)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |
| path | string | - | - |
| code | Uint8Array | - | - |

**Returns**: (none)



### legacySourceSpecifiers(source: string, path: string, code: Uint8Array)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| path | string | - | - |
| code | Uint8Array | - | - |

**Returns**: (none)



### parseRequireCall(source: string, start: number, path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |
| path | string | - | - |

**Returns**: (none)



### assertNoModuleRequireAlias(source: string, start: number, path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |
| path | string | - | - |

**Returns**: (none)



### assertNoReflectRequireAlias(source: string, start: number, path: string, code: Uint8Array)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |
| path | string | - | - |
| code | Uint8Array | - | - |

**Returns**: (none)



### assertNoGlobalLoaderAlias(source: string, start: number, path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |
| path | string | - | - |

**Returns**: (none)



### assertNoDirectLoaderFactoryCall(source: string, start: number, keyword: string, path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |
| keyword | string | - | - |
| path | string | - | - |

**Returns**: (none)



### readSourceMember(source: string, start: number, path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |
| path | string | - | - |

**Returns**: (none)



### parenthesizedLoaderContinuation(source: string, start: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |

**Returns**: (none)



### parseImportMetaURL(source: string, start: number, path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |
| path | string | - | - |

**Returns**: (none)



### readQuotedSpecifier(source: string, start: number, path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |
| path | string | - | - |

**Returns**: (none)



### readQualifiedIdentifier(source: string, start: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |

**Returns**: (none)



### readIdentifierToken(source: string, start: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |

**Returns**: (none)



### consumeIdentifierToken(source: string, start: number, expected: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |
| expected | string | - | - |

**Returns**: (none)



### consumeOptionalChainToken(source: string, start: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |

**Returns**: (none)



### isIdentifierTokenAt(source: string, start: number, expected: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |
| expected | string | - | - |

**Returns**: (none)



### skipSourceTrivia(source: string, start: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |

**Returns**: (none)



### sourceStatementEndsAt(source: string, start: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |

**Returns**: (none)



### computedSourceError(path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: (none)



### aliasedSourceError(path: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |

**Returns**: (none)



### sourceSyntaxError(path: string, cause?: unknown)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | string | - | - |
| cause? | unknown | - | - |

**Returns**: (none)



### hasCodeMatch(source: string, pattern: RegExp, code: Uint8Array)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| pattern | RegExp | - | - |
| code | Uint8Array | - | - |

**Returns**: (none)



### executableCodeMask(source: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |

**Returns**: (none)



### isIdentifierStart(char: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| char | string | - | - |

**Returns**: (none)



### isIdentifierPart(char: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| char | string | - | - |

**Returns**: (none)



### isDecimalDigit(char: string)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| char | string | - | - |

**Returns**: (none)



### skipRegexLiteral(source: string, start: number)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | string | - | - |
| start | number | - | - |

**Returns**: (none)



### sourceGraphManifest(root: string, initialFiles: Iterable<string>)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | string | - | - |
| initialFiles | Iterable<string> | - | - |

**Returns**: (none)



### sourceGraphSHA256(root: string, initialFiles: Iterable<string>)

**Async function**

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| root | string | - | - |
| initialFiles | Iterable<string> | - | - |

**Returns**: (none)


