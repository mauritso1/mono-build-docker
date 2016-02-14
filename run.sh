#!/bin/bash

docker run \
    --rm -it \
    -v $(pwd)/build.sh:/build.sh \
    -v $(pwd)/src:/src \
    -v $(pwd)/config:/config \
    plataan-build
