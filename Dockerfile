FROM gitpod/workspace-full:latest

USER root

RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list \
  && curl https://bazel.build/bazel-release.pub.gpg | apt-key add -

RUN apt-get update \
  && apt-get install -y openjdk-8-jdk bazel \
  && rm -rf /var/lib/apt/lists/*
