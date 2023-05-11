# Allowed certain service type

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
      nodePort: 30007
```

1. Write a `constraint template` that allows given types of service to be created.
2. Write a `constraint` that passes allowed service type as `parameters` to template.
    * Only allow `ClusterIP`, `ExternalName`, `LoadBalancer` type of service to be created.
3. You must add `.spec.match.namespaces` to `constraint`.
```yaml
spec:
  match:
    namespaces:
      - "user-<id>"
```
4. Apply service YAML to test your constraint policy.

```bash
$ kubectl apply -f nodeport-service.yaml
```