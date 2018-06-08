ARG  GO_VERSION=latest
FROM golang:${GO_VERSION}

ENV GODEP_VERSION 0.4.1

RUN go get -u github.com/derekparker/delve/cmd/dlv && \
    curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/v${GODEP_VERSION}/dep-linux-amd64 && \
    chmod +x /usr/local/bin/dep && \
    go get github.com/pilu/fresh

CMD ["main"]
