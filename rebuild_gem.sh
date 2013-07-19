#!/bin/bash

rm pkg/capnode-0.0.1.gem
echo "rm gem success"

rake build
gem uninstall capnode
gem install pkg/capnode-0.0.1.gem --local