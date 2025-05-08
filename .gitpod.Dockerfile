FROM gitpod/workspace-full:latest

# Install Go (if not already in the base image)
ENV GO_VERSION=1.22.3
RUN curl -sSL "https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz" | tar -C /usr/local -xz
ENV PATH="/usr/local/go/bin:${PATH}"

# Install Cosmos SDK tool
RUN go install cosmossdk.io/tools/cosmovisor@latest
