# API Reference: detect.py

**Language**: Python

**Source**: `skills/caveman-compress/scripts/detect.py`

---

## Functions

### _is_code_line(line: str) → bool

Check if a line looks like code.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | str | - | - |

**Returns**: `bool`



### _is_json_content(text: str) → bool

Check if content is valid JSON.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | str | - | - |

**Returns**: `bool`



### _is_yaml_content(lines: list[str]) → bool

Heuristic: check if content looks like YAML.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| lines | list[str] | - | - |

**Returns**: `bool`



### detect_file_type(filepath: Path) → str

Classify a file as 'natural_language', 'code', 'config', or 'unknown'.

Returns:
    One of: 'natural_language', 'code', 'config', 'unknown'

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| filepath | Path | - | - |

**Returns**: `str`



### should_compress(filepath: Path) → bool

Return True if the file is natural language and should be compressed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| filepath | Path | - | - |

**Returns**: `bool`


