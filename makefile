.PHONY: build install clean

PRJ=./apk
APK=min.apk

build: clean
	mkdir -p out
	java -jar tools/apktool_2.12.1.jar b $(PRJ) -o ./out/$(APK)
	java -jar tools/uber-apk-signer-1.3.0.jar --apks ./out/$(APK) --allowResign -o ./out

install: build
	adb install -r ./out/min-aligned-debugSigned.apk

clean:
	-rm ./out/* 