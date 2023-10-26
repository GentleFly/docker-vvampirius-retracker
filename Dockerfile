FROM golang:1.16.15-stretch AS builder
LABEL stage=gobuilder
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go get github.com/vvampirius/retracker/...
FROM scratch
COPY --from=builder /go/bin/retracker /retracker
CMD ["/retracker", "-l", ":8080"]
