#!/usr/bin/env bash
set -e

APKTOOL_SHA256="66cf4524a4a45a7f56567d08b2c9b6ec237bcdd78cee69fd4a59c8a0243aeafa"
UBER_SHA256="e1299fd6fcf4da527dd53735b56127e8ea922a321128123b9c32d619bba1d835"

mkdir -p tools

echo "[+] Downloading apktool..."
curl -L "https://github.com/iBotPeaches/Apktool/releases/download/v2.12.1/apktool_2.12.1.jar" \
  -o tools/apktool_2.12.1.jar

echo "[+] Downloading uber-apk-signer..."
curl -L "https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar" \
  -o tools/uber-apk-signer-1.3.0.jar

echo "[+] Checking hashes"
if ! sha256sum -c <<< "$APKTOOL_SHA256 tools/apktool_2.12.1.jar"; then
  exit
fi

if ! sha256sum -c <<< "$UBER_SHA256 tools/uber-apk-signer-1.3.0.jar"; then
  exit
fi

echo "[+] Done. Run: make install"
