# API Reference: test_validate_catalog.py

**Language**: Python

**Source**: `shared/provider-catalog/tests/test_validate_catalog.py`

---

## Classes

### ValidateCatalogTest

**Inherits from**: unittest.TestCase

#### Methods

##### test_shipped_catalog_is_valid(self) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### test_unknown_field_fails_closed(self) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### test_price_affecting_keys_match_the_go_source_of_truth(self) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### test_price_multiplier_is_inside_the_snapshot_identity(self) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### test_unreviewed_sync_marker_fails_closed(self) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### test_review_marker_matches_the_sync_script(self) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### test_non_https_source_fails_closed(self) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`



