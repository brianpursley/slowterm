FROM golang

WORKDIR /go/src/app
COPY slowterm.go .

RUN go get -d -v ./...
RUN go install -v ./...

ENV SLEEP=${SLEEP:-75}
ENV EXIT=${EXIT:-1}

CMD ["app"]