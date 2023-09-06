#!/usr/bin/env bash
# Author: wswenyue.
#Date & Time: 2023-08-25 17:56:38
#Description: a bash script
wget -O aklog.tar.gz https://github.com/wswenyue/aklog/archive/v5.0.3.tar.gz \
&& openssl dgst -sha256 aklog.tar.gz && rm -rf ./aklog.tar.gz