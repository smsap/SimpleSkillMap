# Introduction

A simple service to note skills data.

# Implementation Details

## SAP Specific

The implementation will be initially on SAP specific technology, but will keep it simple so can be deployed as a simple Spring boot application too.

## Initialize

### Bootstrap
```shell
cds init SimpleSkillMap --add  java,cf-manifest --java:mvn groupId=smsap,artifactId=ssm,package=smsap.ssm
```

### Adding sample
```shell
mvn com.sap.cds:cds-maven-plugin:addSample
```

### Adding local database (SQlite)
This will create a local `sqlite.db` under the root directory. 
```shell
cds deploy -2 sqlite
```
or to some other name like `skillmap.db` under the root directory.
```shell
cds deploy -2 sqlite:skillmap.db
```

## Building
### Build and run the application
#### With tests
```shell
mvn clean compile package
```
#### Without tests
```shell
mvn clean compile package -DskipTests
```

### Run app on local
```shell
mvn spring-boot:start
```

## Deploying
### Cloudfoundry
```shell
cf push
```