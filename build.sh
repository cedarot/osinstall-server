#!/bin/bash
export GOPATH=$(pwd)
export PATH=$PATH:$GOPATH

export GO111MODULE=off
export GOROOT=$(which go |  awk -F '/bin/go' '{print $1}')

echo $GO111MODULE
echo $GOROOT
echo $GOPATH

BIN=$(pwd)/bin
WORKSPACE=$(pwd)

cd $WORKSPACE/src/idcos.io/osinstall/cmd/cloudboot-agent && GOOS=linux GOARCH=amd64 go build -o $BIN
cd $WORKSPACE/src/idcos.io/osinstall/cmd/cloudboot-encrypt-generator && GOOS=linux GOARCH=amd64 go build -o $BIN
cd $WORKSPACE/src/idcos.io/osinstall/cmd/cloudboot-initdb && GOOS=linux GOARCH=amd64 go build -o $BIN
cd $WORKSPACE/src/idcos.io/osinstall/cmd/cloudboot-server && GOOS=linux GOARCH=amd64 go build -o $BIN
cd $WORKSPACE/src/idcos.io/osinstall/cmd/pe-agent && GOOS=windows GOARCH=amd64 go build -o $BIN
cd $WORKSPACE/src/idcos.io/osinstall/cmd/win-agent && GOOS=windows GOARCH=amd64 go build -o $BIN


