FROM golang:1

RUN apt-get update && \
     DEBIAN_FRONTEND=noninteractive apt-get upgrade -y 

RUN go get github.com/smartystreets/goconvey


ENV GOFLAGS="-mod=vendor"
ENV PACKAGE="."
WORKDIR /app

CMD cd $PACKAGE && /go/bin/goconvey -host 0.0.0.0 -launchBrowser=false .






