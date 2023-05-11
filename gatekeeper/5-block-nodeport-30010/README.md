# Block NodePort

```yaml
apiVersion: v1
kind: Service
metadata:
  name: my-service-disallowed
spec:
  type: NodePort
  ports:
    - port: 80
      targetPort: 80
      nodePort: 30010
```

1. Write a `constraint template` that block service exposes at `nodePort: 30010` to be created.
2. Write a `constraint`.
3. You must add `.spec.match.namespaces` to `constraint`.
```yaml
spec:
  match:
    namespaces:
      - "user-<id>"
```
4. Apply service YAML to test your constraint policy.