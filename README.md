# Connect to remote server

```bash
$ ssh <user-id>@<server-ip>
```

# Namespace

## 建立專屬 namespace

Namespace 請取為你的使用者帳號名稱，`<id>` 請更換成你的 user id

```bash
$ kubectl create namespace user-<id>
```

## 更換現在 namespace

* Namespace 預設為 `default`，為避免衝突請切換至剛建立的 NS
* 此處 context 請使用 `kubernetes-adoption-context`
* `<id>` 請更換成你的 user id

```bash
# 指令
$ kubectl config use-context kubernetes-adoption-context
$ kubectl config set-context --current --namespace=user-<id>
```

## 確認是否已經切換成功

```bash
$ kubectl config view --minify | grep namespace:
```