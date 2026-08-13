# How To: Context Pack Fails Closed To Honest Zero On Malformed Report

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: mock

## Overview

Configuration example: test context pack fails closed to honest zero on malformed report

## Prerequisites

**Required Modules:**
- `__future__`
- `json`
- `urllib.request`
- `unittest.mock`
- `caveman_cloud`


## Step-by-Step Guide

### Step 1: Assign response = value

```Python
response = {'items': [{'id': 'a'}], 'tokens_used': 5, 'tokens_before': 10, 'tokens_saved': 999, 'deferred_count': 1, 'deferred_ids': ['b'], 'basis': 'verified'}
```


## Complete Example

```Python
# Workflow
response = {'items': [{'id': 'a'}], 'tokens_used': 5, 'tokens_before': 10, 'tokens_saved': 999, 'deferred_count': 1, 'deferred_ids': ['b'], 'basis': 'verified'}
```

## Next Steps


---

*Source: test_context_pack.py:91 | Complexity: Beginner | Last updated: 2026-08-11*