FROM nvcr.io/nvidia/l4t-base:r32.4.3
ENV EXTRA_BAZEL_ARGS="--host_javabase=@local_jdk//:jdk"
RUN apt-get update && apt-get install -y \
    zip \
    unzip \
    pkg-config \
    zlib1g-dev \
    openjdk-8-jdk \
    gcc
RUN wget https://github.com/bazelbuild/bazel/releases/download/3.1.0/bazel-3.1.0-dist.zip && \
    unzip bazel-3.1.0-dist.zip -d bazel-3.1.0-dist && \
    cd bazel-3.1.0-dist && \
    ./compile.sh && \
    mv /bazel-3.1.0-dist/output/bazel /usr/local/bin
