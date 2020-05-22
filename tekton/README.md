##Install OpenShift Pipelines
Install via Operator Hub

##Define resources

##Run pipeline
For testing pipline I created additional pipeline run yaml, which can be invoked like this:
```
oc apply -f 04_pipeline-run-test.yaml
```



## expose event listener for webhook
```
oc expose svc el-get-started-java-event-listener
oc  get route el-get-started-java-event-listener --template='http://{{.spec.host}}'
```
