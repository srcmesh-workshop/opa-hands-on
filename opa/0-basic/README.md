# Basic

## Create A Bundle

```bash
$ opa build -b <path-to-rego-files-directory>

$ opa build -b ./
```

## Evaluation A Query

```bash
$ opa eval -i input.json -d policy.rego -d data.json --format=pretty "data.opa"
```

Evaluation with bundle.

```bash
$ opa eval -b bundle.tar.gz --format=pretty "data.opa"
```

## Hands-on

* 為 `policy.rego` 加上以下判斷:
  * 只有`使用者`的`群組`有在允許的 admin 群組內才放行