FROM golang:1.14.6-alpine3.12 AS builder

WORKDIR /go/src/hello

COPY /go/src/hello .

RUN go get -v ./...  \
    && go build -o hello

FROM scratch 

COPY --from=builder go/src/hello/ .

CMD ["./hello"] 
