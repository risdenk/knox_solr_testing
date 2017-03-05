#!/bin/sh

set -e
set -o pipefail

java -jar /knox/bin/gateway.jar >>/knox/logs/knox.out 2>>/knox/logs/knox.err

