# Simple usage with a mounted data directory:
# > docker build -t nexus-chain .
# > docker run -it -p 46657:46657 -p 46656:46656 -v ~/.nexus-chain:/nexus-chain/.nexus-chain nexus-chain nexus-chain init
# > docker run -it -p 46657:46657 -p 46656:46656 -v ~/.nexus-chain:/nexus-chain/.nexus-chain nexus-chain nexus-chain start
FROM golang:1.15-alpine AS build-env

# Set up dependencies
ENV PACKAGES curl make git libc-dev bash gcc linux-headers eudev-dev python3

# Set working directory for the build
WORKDIR /go/src/github.com/protocol-nexus/nexus-chain

# Add source files
COPY . .

RUN go version

# Install minimum necessary dependencies, build Cosmos SDK, remove packages
RUN apk add --no-cache $PACKAGES && \
    make install

# Final image
FROM alpine:edge

ENV nexus /stchaind

# Install ca-certificates
RUN apk add --update ca-certificates

RUN addgroup nexus && \
    adduser -S -G nexus nexus -h "$nexus"

USER nexus

WORKDIR $nexus

# Copy over binaries from the build-env
COPY --from=build-env /go/bin/stchaind /usr/bin/stchaind

# Run stchaind by default, omit entrypoint to ease using container with stchaincli
CMD ["stchaind"]
