#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

# Update the VARIANT arg in devcontainer.json to pick an Ubuntu version: 20.04, 18.04
# To fully customize the contents of this image, use the following Dockerfile instead:
# https://github.com/microsoft/vscode-dev-containers/tree/v0.122.1/containers/ubuntu/.devcontainer/base.Dockerfile
ARG VARIANT="20.04"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-ubuntu${VARIANT}

RUN apt-get update && \
    apt-get install -y build-essential curl libevent-dev libssl-dev libxml2-dev libyaml-dev libgmp-dev git snapd && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -sL "https://keybase.io/crystal/pgp_keys.asc" | apt-key add - && \
echo "deb https://dist.crystal-lang.org/apt crystal main" | tee /etc/apt/sources.list.d/crystal.list && \
apt-get update

RUN apt install -y crystal