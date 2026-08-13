# API Reference: test_detect.py

**Language**: Python

**Source**: `tests/test_detect.py`

---

## Classes

### DetectFileTypeTests

**Inherits from**: unittest.TestCase

#### Methods

##### _write(self, dirpath, name, body)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| dirpath | None | - | - |
| name | None | - | - |
| body | None | - | - |


##### test_dockerfile_is_code(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_makefile_is_code(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_known_names_case_insensitive(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cmakelists_txt_not_compressible_despite_txt_extension(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_shebang_script_is_code(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extensionless_prose_still_compressible(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_markdown_still_compressible(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



