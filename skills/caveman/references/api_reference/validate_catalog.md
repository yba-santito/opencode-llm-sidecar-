# API Reference: validate_catalog.py

**Language**: Python

**Source**: `shared/provider-catalog/validate_catalog.py`

---

## Classes

### CatalogError

**Inherits from**: ValueError



## Functions

### load_yaml(path: Path) → list[dict[str, Any]]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | Path | - | - |

**Returns**: `list[dict[str, Any]]`



### parsed_time(value: Any, label: str) → datetime

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| value | Any | - | - |
| label | str | - | - |

**Returns**: `datetime`



### validate_row(row: dict[str, Any], label: str, now: datetime) → tuple[str, str, str]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| row | dict[str, Any] | - | - |
| label | str | - | - |
| now | datetime | - | - |

**Returns**: `tuple[str, str, str]`



### check_review_markers(text: str, label: str) → None

Refuse a catalog that still carries an unreviewed sync proposal.

YAML comments are invisible to the parsed rows, so this reads the raw file:
a rubber-stamped merge must not be able to advance price provenance while
the line saying "nobody has confirmed this yet" is still in the file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | str | - | - |
| label | str | - | - |

**Returns**: `None`



### pricing_identity(row: dict[str, Any]) → dict[str, Any]

The part of a row the immutable dated snapshot pins.

Present-with-a-value and absent are different attestations, so only the
price-affecting capability keys the row actually carries are recorded:
adding one to a row that had none changes that row's price and must break
the pin exactly like editing one that was already there.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| row | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`



### validate_catalog(now: datetime | None = None) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| now | datetime | None | None | - |

**Returns**: `None`



### main() → int

**Returns**: `int`


