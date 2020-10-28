# Install Bazel, https://bazel.build/versions/master/docs/install.html#ubuntu
FROM openjdk:8

RUN git clone https://github.com/bazelbuild/bazel --branch 3.7.0 && \
    cd bazel && \
    ./compile.sh && \
    cp output/bazel /usr/local/bin/ && \
    cd .. && rm -rf bazel
