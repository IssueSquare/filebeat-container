# filebeat-container

docker container with filebeat:5.4.1 on alpine

use for shipping log with sidecar pattern

## Usage

0. prerequirment build image from Dockerfile
```shell
docker build -t filebeat .
```

1. you can use docker -e put env variable to replace logpath ,endpoint...

>  env var currently supprt:
>  - LOGPATH
>  - SCHEMA
>  - ELASTICHOST
>  - ELASTICINDEX

2. directly use docker -v to replace your filebeat.yml

```shell
docker run -v YOUR-filebeat.yml:/tmp/filebeat.yml filebeat
```

## Contribution

1. if you want another version support, new a branch name with version number, than request a PR.

2. if you want more env variabe support, add more rules in entrypoint.sh, than request a PR.
