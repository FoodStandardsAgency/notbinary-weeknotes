#!/usr/bin/env bash

# Run as a container for local test/development
docker build --tag govwiki . && \
docker run -it --rm -e USERNAME=wiki -e PASSWORD=123 -e NOSSL=true -e GITHUB_REPOSITORY="davidcarboni/govwiki" -e GITHUB_BRANCH=test -e GITHUB_ACCESS_TOKEN='be42b8fd33ee3e196e6e2a30deadd3e4f4112a8f' -p 5000:5000 govwiki
