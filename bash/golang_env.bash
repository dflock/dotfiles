#!/usr/bin/env bash

export GOPATH=$HOME/.go
pathadd /usr/local/go/bin 'after'
pathadd $GOPATH 'after'
pathadd $GOPATH/bin 'after'
export DRIVE_GOMAXPROCS=8
export GO111MODULE="on"
