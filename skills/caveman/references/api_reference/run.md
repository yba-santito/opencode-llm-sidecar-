# API Reference: run.py

**Language**: Python

**Source**: `benchmarks/run.py`

---

## Functions

### load_prompts()

**Returns**: (none)



### load_caveman_system()

**Returns**: (none)



### sha256_file(path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | None | - | - |

**Returns**: (none)



### call_api(client, model, system, prompt, max_retries = 3)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| client | None | - | - |
| model | None | - | - |
| system | None | - | - |
| prompt | None | - | - |
| max_retries | None | 3 | - |

**Returns**: (none)



### run_benchmarks(client, model, prompts, caveman_system, trials)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| client | None | - | - |
| model | None | - | - |
| prompts | None | - | - |
| caveman_system | None | - | - |
| trials | None | - | - |

**Returns**: (none)



### compute_stats(results)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| results | None | - | - |

**Returns**: (none)



### format_prompt_label(prompt_id)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| prompt_id | None | - | - |

**Returns**: (none)



### format_table(rows, summary)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| rows | None | - | - |
| summary | None | - | - |

**Returns**: (none)



### save_results(results, rows, summary, model, trials, skill_hash)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| results | None | - | - |
| rows | None | - | - |
| summary | None | - | - |
| model | None | - | - |
| trials | None | - | - |
| skill_hash | None | - | - |

**Returns**: (none)



### update_readme(table_md)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| table_md | None | - | - |

**Returns**: (none)



### dry_run(prompts, model, trials)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| prompts | None | - | - |
| model | None | - | - |
| trials | None | - | - |

**Returns**: (none)



### main()

**Returns**: (none)


