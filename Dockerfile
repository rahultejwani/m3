FROM znly/protoc:0.2.0 AS protoc
FROM golang:1.22-bullseye

COPY --from=protoc /usr/bin/protoc /usr/bin/protoc

RUN apt-get update && apt-get install -y lsof netcat-openbsd docker.io jq
