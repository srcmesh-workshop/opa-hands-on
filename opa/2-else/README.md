## Hands-on

當`使用者`使用的`網路`不在允許的網路列表內時仍然允許通過，但提示說使用 `unsafe network`

* 允許通過且在允許網路列表內時

```json
{
  "allow": true,
  "msg": "safe network"
}
```

* 允許通過，但使用不安全網路

```json
{
  "allow": true,
  "msg": "use unsafe network"
}
```

* 不允許通過
```json
{
  "allow": false,
  "msg": "not allowed to pass"
}
```