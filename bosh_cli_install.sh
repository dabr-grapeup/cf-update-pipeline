#!/bin/bash

wget https://s3.amazonaws.com/bosh-cli-artifacts/bosh-cli-2.0.31-linux-amd64
chmod +x bosh-cli*
mv bosh-cli* /usr/local/bin/bosh