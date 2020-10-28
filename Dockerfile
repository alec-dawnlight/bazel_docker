# Install Bazel, https://bazel.build/versions/master/docs/install.html#ubuntu
FROM nvcr.io/nvidia/l4t-base:r32.4.3
# RUN wget https://github.com/bazelbuild/bazel/releases/download/3.6.0/bazel-3.6.0-dist.zip
# RUN unzip bazel-3.6.0-dist.zip -d bazel-3.6.0-dist && \
#     cd bazel-3.6.0-dist && \
#     ./compile.sh
# # RUN
# #     cp output/bazel /usr/local/bin && \
# #     cd .. && rm -rf bazel-3.6.0-dist.zip && rm -rf bazel-3.6.0-dist

# CMD ["bash"]


RUN apt-get update && apt-get install -y curl gnupg
RUN curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg
RUN mv bazel.gpg /etc/apt/trusted.gpg.d/
RUN echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
RUN apt-get update && apt-get install -y bazel-3.1.0
