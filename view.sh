#!/usr/bin/env bash

# Requires: hugo (extended), go, node, pnpm
pnpm install --no-frozen-lockfile
hugo server --disableFastRender --buildFuture
