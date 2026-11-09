# MinAPK

A minimal APK project for practicing smali coding.

## Setup

| Tool | Version |
|------|---------|
| [apktool](https://apktool.org/) | 2.12.1 |
| [uber-apk-signer](https://github.com/patrickfav/uber-apk-signer) | 1.3.0 |

```bash
./setup.sh  # downloads the above into tools/
```

## Usage

```bash
make build    # compile smali + sign → out/mini-aligned-debugSigned.apk
make install  # build + adb install
make clean    # remove out/
```

## Structure

```
apk/
  smali/com/min/apk/MainActivity.smali    # code here
  AndroidManifest.xml
  res/values/strings.xml
tools/                                     # jars
out/                                       # build output
makefile
```

## Workflow

1. Edit `apk/smali/com/min/apk/MainActivity.smali`
2. `make install`
3. Launch `MinAPK` on device

> Note: You can delete clinit methods and the App.smali file and it will still work
