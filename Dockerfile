FROM alpine

RUN apk add --update bash wget ca-certificates && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.31-r0/glibc-2.31-r0.apk && \
    wget https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u252-b09/OpenJDK8U-jre_x64_linux_hotspot_8u252b09.tar.gz && \
    tar xzf OpenJDK8U-jre_x64_linux_hotspot_8u252b09.tar.gz -C /opt && \
    apk add glibc-2.31-r0.apk && \
    apk del bash wget ca-certificates && \
    rm -f /var/cache/apk/* glibc-2.31-r0.apk OpenJDK8U-jre_x64_linux_hotspot_8u252b09.tar.gz
ENV JAVA_HOME=/opt/jdk8u252-b09-jre/ \
    PATH="/opt/jdk8u252-b09-jre/bin:${PATH}"