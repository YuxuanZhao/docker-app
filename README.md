# docker-app

build a docker image basing the Dockerfile (normally what Jenkins does in CI)
```
docker build -t my-app:1.0 .
```

run the docker image
```
docker run my-app:1.0
```

rename to upsh it to AWS
```
docker tag my-app:1.1 664574038682.dkr.ecr.eu-central-1.amazonaws.com/my-app:1.1
```