# How To: Price Multiplier Is Inside The Snapshot Identity

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: test price multiplier is inside the snapshot identity

## Prerequisites

**Required Modules:**
- `datetime`
- `importlib.util`
- `pathlib`
- `re`
- `unittest`


## Step-by-Step Guide

### Step 1: Assign base = value

```Python
base = {'provider': 'openai', 'model': 'gpt-5.5', 'region': 'global', 'currency': 'USD', 'pricing': {'input_per_million': 5, 'output_per_million': 30}, 'capabilities': {'regional_processing_multiplier': 1.1, 'vision': True}, 'sources': ['https://example.com/pricing'], 'verified_at': '2026-07-26T00:00:00Z'}
```

### Step 2: Assign tampered = value

```Python
tampered = {**base, 'capabilities': {**base['capabilities'], 'regional_processing_multiplier': 1.95}}
```

### Step 3: Call self.assertNotEqual()

```Python
self.assertNotEqual(validator.pricing_identity(base), validator.pricing_identity(tampered), 'a price multiplier escaped the identity the immutable snapshot pins')
```

### Step 4: Assign capability_edit = value

```Python
capability_edit = {**base, 'capabilities': {**base['capabilities'], 'vision': False, 'tools': True}}
```

### Step 5: Call self.assertEqual()

```Python
self.assertEqual(validator.pricing_identity(base), validator.pricing_identity(capability_edit))
```

### Step 6: Assign without = value

```Python
without = {**base, 'capabilities': {'vision': True}}
```

### Step 7: Call self.assertNotEqual()

```Python
self.assertNotEqual(validator.pricing_identity(base), validator.pricing_identity(without))
```


## Complete Example

```Python
# Workflow
base = {'provider': 'openai', 'model': 'gpt-5.5', 'region': 'global', 'currency': 'USD', 'pricing': {'input_per_million': 5, 'output_per_million': 30}, 'capabilities': {'regional_processing_multiplier': 1.1, 'vision': True}, 'sources': ['https://example.com/pricing'], 'verified_at': '2026-07-26T00:00:00Z'}
tampered = {**base, 'capabilities': {**base['capabilities'], 'regional_processing_multiplier': 1.95}}
self.assertNotEqual(validator.pricing_identity(base), validator.pricing_identity(tampered), 'a price multiplier escaped the identity the immutable snapshot pins')
capability_edit = {**base, 'capabilities': {**base['capabilities'], 'vision': False, 'tools': True}}
self.assertEqual(validator.pricing_identity(base), validator.pricing_identity(capability_edit))
without = {**base, 'capabilities': {'vision': True}}
self.assertNotEqual(validator.pricing_identity(base), validator.pricing_identity(without))
```

## Next Steps


---

*Source: test_validate_catalog.py:71 | Complexity: Intermediate | Last updated: 2026-08-11*