# filebeat-container
docker container with filebeat:5.4.1 on alpine 
use for ship log with sidecar pattern

## usage

1. you can use docker -e put env variable to replace logpath ,endpoint...

env var currently supprt:
- LOGPATH
- ELASTICHOST
- ELASTICINDEX

2. directly use docker -v to replace your filebeat.yml

```shell
docker run -v YOUR-filebeat.yml:/tmp IMAGENAME
```

