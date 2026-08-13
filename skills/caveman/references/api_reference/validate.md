# API Reference: validate.py

**Language**: Python

**Source**: `skills/caveman-compress/scripts/validate.py`

---

## Classes

### ValidationResult

**Inherits from**: (none)

#### Methods

##### __init__(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### add_error(self, msg)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| msg | None | - | - |


##### add_warning(self, msg)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| msg | None | - | - |




## Functions

### read_file(path: Path) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | Path | - | - |

**Returns**: `str`



### extract_headings(text)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | None | - | - |

**Returns**: (none)



### extract_code_blocks(text)

Line-based fenced code block extractor.

Handles ``` and ~~~ fences with variable length (CommonMark: closing
fence must use same char and be at least as long as opening). Supports
nested fences (e.g. an outer 4-backtick block wrapping inner 3-backtick
content).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | None | - | - |

**Returns**: (none)



### extract_urls(text)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | None | - | - |

**Returns**: (none)



### extract_paths(text)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | None | - | - |

**Returns**: (none)



### count_bullets(text)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | None | - | - |

**Returns**: (none)



### extract_inline_codes(text)

Backtick-delimited inline spans, with fenced code blocks stripped first.

Previously used a column-0-anchored regex to strip fences, which misses
fences indented 1-3 spaces (valid CommonMark). Reuse extract_code_blocks
(FENCE_OPEN_REGEX-based, indentation-aware) instead so an indented fence's
body backticks don't leak into inline-code pairing.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | None | - | - |

**Returns**: (none)



### validate_headings(orig, comp, result)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| orig | None | - | - |
| comp | None | - | - |
| result | None | - | - |

**Returns**: (none)



### validate_code_blocks(orig, comp, result)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| orig | None | - | - |
| comp | None | - | - |
| result | None | - | - |

**Returns**: (none)



### validate_urls(orig, comp, result)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| orig | None | - | - |
| comp | None | - | - |
| result | None | - | - |

**Returns**: (none)



### validate_paths(orig, comp, result)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| orig | None | - | - |
| comp | None | - | - |
| result | None | - | - |

**Returns**: (none)



### validate_bullets(orig, comp, result)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| orig | None | - | - |
| comp | None | - | - |
| result | None | - | - |

**Returns**: (none)



### validate_inline_codes(orig, comp, result)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| orig | None | - | - |
| comp | None | - | - |
| result | None | - | - |

**Returns**: (none)



### validate(original_path: Path, compressed_path: Path) → ValidationResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| original_path | Path | - | - |
| compressed_path | Path | - | - |

**Returns**: `ValidationResult`


