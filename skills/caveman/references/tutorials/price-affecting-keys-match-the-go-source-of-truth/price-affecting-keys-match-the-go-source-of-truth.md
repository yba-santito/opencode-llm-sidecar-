# How To: Price Affecting Keys Match The Go Source Of Truth

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: test price affecting keys match the go source of truth

## Prerequisites

**Required Modules:**
- `datetime`
- `importlib.util`
- `pathlib`
- `re`
- `unittest`


## Step-by-Step Guide

### Step 1: Assign go_source = unknown.read_text(...)

```Python
go_source = (MODULE_PATH.parents[1] / 'platform' / 'catalog' / 'catalog.go').read_text(encoding='utf-8')
```

### Step 2: Assign block = re.search(...)

```Python
block = re.search('var PriceAffectingCapabilities = \\[\\]string\\{(.*?)\\n\\}', go_source, re.S)
```

### Step 3: Call self.assertIsNotNone()

```Python
self.assertIsNotNone(block, 'PriceAffectingCapabilities not found in catalog.go')
```

### Step 4: Assign body = block.group(...)

```Python
body = block.group(1)
```

### Step 5: Assign go_keys = re.findall(...)

```Python
go_keys = re.findall('"([^"]+)"', body)
```

### Step 6: Assign const = re.search(...)

```Python
const = re.search(f'{name}\\s*=\\s*"([^"]+)"', go_source)
```

### Step 7: Call self.assertIsNotNone()

```Python
self.assertIsNotNone(const, f'could not resolve Go const {name}')
```

### Step 8: Call go_keys.append()

```Python
go_keys.append(const.group(1))
```

### Step 9: Call self.assertEqual()

```Python
self.assertEqual(sorted(go_keys), sorted(validator.PRICE_AFFECTING_CAPABILITY_KEYS), 'the Go and Python price-affecting capability lists have drifted; a key pinned on one side but not the other can move money the catalog_version in a signed receipt does not attest')
```


## Complete Example

```Python
# Workflow
go_source = (MODULE_PATH.parents[1] / 'platform' / 'catalog' / 'catalog.go').read_text(encoding='utf-8')
block = re.search('var PriceAffectingCapabilities = \\[\\]string\\{(.*?)\\n\\}', go_source, re.S)
self.assertIsNotNone(block, 'PriceAffectingCapabilities not found in catalog.go')
body = block.group(1)
go_keys = re.findall('"([^"]+)"', body)
for name in re.findall('^\\s*([A-Z]\\w+),\\s*$', body, re.M):
    const = re.search(f'{name}\\s*=\\s*"([^"]+)"', go_source)
    self.assertIsNotNone(const, f'could not resolve Go const {name}')
    go_keys.append(const.group(1))
self.assertEqual(sorted(go_keys), sorted(validator.PRICE_AFFECTING_CAPABILITY_KEYS), 'the Go and Python price-affecting capability lists have drifted; a key pinned on one side but not the other can move money the catalog_version in a signed receipt does not attest')
```

## Next Steps


---

*Source: test_validate_catalog.py:43 | Complexity: Advanced | Last updated: 2026-08-11*