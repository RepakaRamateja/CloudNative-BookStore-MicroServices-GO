FROM golang:1.7.4-alpine

ENV SOURCES /go/src/github.com/PacktPublishing/Cloud-Native-Go/

COPY . ${SOURCES}

RUN cd ${SOURCES} && CGO_ENABLED=0 go install -a

EXPOSE 8080

ENTRYPOINT Cloud-Native-Go
