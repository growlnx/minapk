#!/usr/bin/env bash
set -e

mkdir -p tools

echo "Downloading apktool..."
curl -L "https://github.com/iBotPeaches/Apktool/releases/download/v2.12.1/apktool_2.12.1.jar" \
  -o tools/apktool_2.12.1.jar

echo "Downloading uber-apk-signer..."
curl -L "https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar" \
  -o tools/uber-apk-signer-1.3.0.jar

echo "Done. Run: make install"
