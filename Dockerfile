FROM golang:1.13-buster as build

WORKDIR /go/src/app
ADD . /go/src/app

RUN go get -d -v ./...

RUN go build -o /go/bin/app

RUN adduser -D appuser

# Now copy it into our base image.
FROM gcr.io/distroless/base
COPY --from=build --chown=appuser:appuser /go/bin/app /

USER appuser
CMD ["/app"]
