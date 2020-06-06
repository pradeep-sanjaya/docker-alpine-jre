# alpine-jre
Docker container image with
- glibc-2.31-r0
- AdaptOpenJDK - OpenJDK 8 (LTS) JRE
- Image size is 123MB

## Build
```
docker build -t ngpsanjaya/alpine-jre:1.0.0 .
```

## Run docker container
```
docker run --name alpine-jre ngpsanjaya/alpine-jre:1.0.0
```