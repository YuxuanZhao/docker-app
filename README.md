# docker-app

## Jenkins does in CI

build a docker image basing the Dockerfile
```
docker build -t my-app:1.0 .
```

run the docker image
```
docker run my-app:1.0
```

## Jenkins does for Docker Repository (normally need to login to the private Repo/ AWS)

rename
```
docker tag my-app:1.1 664574038682.dkr.ecr.eu-central-1.amazonaws.com/my-app:1.1
```

push it to AWS
```
docker push 664574038682.dkr.ecr.eu-central-1.amazonaws.com/my-app:1.1
```

## deploy the images in Docker Repository to the Server

