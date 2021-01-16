#!/bin/bash
# Clean any old build files before starting with the build
bazel clean --expunge

# Build app library
bazel build //:app
