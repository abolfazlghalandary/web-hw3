FROM golang:1.19-alpine

WORKDIR /usr/src/goapp

COPY go.mod ./
COPY go.sum ./
COPY *.go ./

RUN go mod download

RUN go build -o /auth

EXPOSE 8000

CMD [ "/auth" ]