FROM golang:1.18-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /docker-gs-ping

EXPOSE 3000

CMD [ "/docker-gs-ping" ]
