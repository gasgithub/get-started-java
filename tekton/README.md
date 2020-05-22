## Install OpenShift Pipelines
Install via Operator Hub

## Define resources

## migrating-v1alpha1-to-v1beta1
https://github.com/tektoncd/pipeline/blob/master/docs/migrating-v1alpha1-to-v1beta1.md#replacing-an-image-resource

## Run pipeline
For testing pipline I created additional pipeline run yaml, which can be invoked like this:
```
oc apply -f 04_pipeline-run-test.yaml
```



## expose event listener for webhook
```
oc expose svc el-get-started-java-event-listener
oc  get route el-get-started-java-event-listener --template='http://{{.spec.host}}'
```
