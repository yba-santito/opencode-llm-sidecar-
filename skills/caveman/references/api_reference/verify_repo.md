# API Reference: verify_repo.py

**Language**: Python

**Source**: `tests/verify_repo.py`

---

## Classes

### CheckFailure

**Inherits from**: RuntimeError



## Functions

### section(title: str) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| title | str | - | - |

**Returns**: `None`



### ensure(condition: bool, message: str) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| condition | bool | - | - |
| message | str | - | - |

**Returns**: `None`



### run(args: list[str]) → subprocess.CompletedProcess[str]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | list[str] | - | - |

**Returns**: `subprocess.CompletedProcess[str]`



### read_json(path: Path) → object

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | Path | - | - |

**Returns**: `object`



### shell_path(path: Path) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | Path | - | - |

**Returns**: `str`



### _frontmatter_description(path: Path) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | Path | - | - |

**Returns**: `str`



### verify_skill_frontmatter_upload_compatibility() → None

**Returns**: `None`



### verify_synced_files() → None

**Returns**: `None`



### verify_manifests_and_syntax() → None

**Returns**: `None`



### verify_package_contents() → None

**Returns**: `None`



### verify_powershell_static() → None

**Returns**: `None`



### load_compress_modules()

**Returns**: (none)



### verify_compress_fixtures() → None

**Returns**: `None`



### verify_compress_cli() → None

**Returns**: `None`



### verify_hook_install_flow() → None

**Returns**: `None`



### main() → int

**Returns**: `int`


