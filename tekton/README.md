Install OpenShift Pipelines

Define resources

Run pipeline

```
tkn pipeline start build-and-deploy -r git-repo=app-repo -r image=app-image -p deployment-name=get-started-java
```


```
oc adm policy add-scc-to-user anyuid -z default
```


expose ev listneertt
```
oc expose svc el-get-started-java-event-listener
oc  get route el-get-started-java-event-listener --template='http://{{.spec.host}}'
```
