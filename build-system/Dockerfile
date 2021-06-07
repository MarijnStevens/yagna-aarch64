FROM debian:bullseye-slim

# Add the foreign architecture we want and install dependencies
RUN dpkg --add-architecture arm64
RUN apt update && \
    DEBIAN_FRONTEND=noninteractive \
        apt install -y --no-install-recommends \
        build-essential ca-certificates git make \
        python3 wget pkg-config libglib2.0-0 libglib2.0-dev libpixman-1-dev \
        libmount-dev libffi-dev libselinux1-dev libcap-ng-dev libattr1-dev \
        crossbuild-essential-arm64 gcc-10-aarch64-linux-gnu nettle-dev \
        curl ninja-build

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive \
    apt install -y --no-install-recommends \
        libssl-dev:arm64 \
        libcap-ng-dev:arm64 \
        libpixman-1-dev:arm64 \
        libglib2.0-dev:arm64 \
        libbz2-dev:arm64 \
        liblzo2-dev:arm64 \
        librdmacm-dev:arm64

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

ENV PATH "/root/.cargo/bin/:$PATH"

RUN rustup target install aarch64-unknown-linux-gnu

RUN rustup install stable && rustup default stable