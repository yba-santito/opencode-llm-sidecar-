# API Reference: test_compress_safety.py

**Language**: Python

**Source**: `tests/test_compress_safety.py`

---

## Classes

### CompressSafetyTests

**Inherits from**: unittest.TestCase

#### Methods

##### _file_with(self, dirpath: Path, text: str) → Path

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| dirpath | Path | - | - |
| text | str | - | - |

**Returns**: `Path`


##### test_empty_input_refused(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_empty_compressed_output_does_not_touch_disk(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_whitespace_only_compressed_output_does_not_touch_disk(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_identical_compressed_output_does_not_touch_disk(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_real_compression_writes_backup_and_target(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_utf8_roundtrip_survives_compression(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_write_text_atomic_leaves_destination_untouched_on_encode_failure(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_forced_primary_write_failure_leaves_original_and_backup_intact(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_permission_preserved_across_compression(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_retry_preamble_output_rejected_and_not_written(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### ExplodingStr

**Inherits from**: str

#### Methods

##### encode(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### flaky_write(write_path, text)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| write_path | None | - | - |
| text | None | - | - |

**Returns**: (none)



### spy_write_target(target_path, text, backup_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| target_path | None | - | - |
| text | None | - | - |
| backup_path | None | - | - |

**Returns**: (none)


