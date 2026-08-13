# How To: Chained Independent Modes Keep Original Prev

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: test chained independent modes keep original prev

## Prerequisites

**Required Modules:**
- `json`
- `os`
- `subprocess`
- `tempfile`
- `unittest`
- `pathlib`


## Step-by-Step Guide

### Step 1: Call self.flag.write_text()

```Python
self.flag.write_text('wenyan-ultra')
```

### Step 2: Call self.send()

```Python
self.send('/caveman-commit')
```

### Step 3: Call self.send()

```Python
self.send('/caveman-review')
```

### Step 4: Call self.assertEqual()

```Python
self.assertEqual(self.flag_value(), 'review')
```

### Step 5: Call self.send()

```Python
self.send('ordinary follow-up question')
```

### Step 6: Call self.assertEqual()

```Python
self.assertEqual(self.flag_value(), 'wenyan-ultra')
```


## Complete Example

```Python
# Workflow
self.flag.write_text('wenyan-ultra')
self.send('/caveman-commit')
self.send('/caveman-review')
self.assertEqual(self.flag_value(), 'review')
self.send('ordinary follow-up question')
self.assertEqual(self.flag_value(), 'wenyan-ultra')
```

## Next Steps


---

*Source: test_mode_tracker.py:163 | Complexity: Intermediate | Last updated: 2026-08-11*