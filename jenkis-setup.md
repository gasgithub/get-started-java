# Setting up Jenkins

## Create build project
`oc new-project get-started-java-build`

## Create Jenkins
Deploy Jenkins with persistent storage:

`oc new-app jenkins-persistent`

or without storage:

`oc new-app jenkins-ephemeral`

## Update service account
oc policy add-role-to-user edit system:serviceaccount:get-started-java-build:jenkins -n get-started-java
