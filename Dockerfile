FROM golang:1.14.6-alpine3.12 as base

WORKDIR /go/src/hello

COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["hello"]
