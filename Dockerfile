FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /uas_cicd

EXPOSE 3000

CMD ["/uas_cicd"]