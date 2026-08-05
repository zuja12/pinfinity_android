@call apktool b "JOOLA+Infinity_2.1.1_APKPure" -o app-unsigned.apk
@call apksigner sign --ks my-release-key.jks --out app-signed.apk --ks-pass pass:joola12 --key-pass pass:joola12 app-unsigned.apk
@call adb install -r -t -d app-signed.apk
rem Debuging commands
rem @call adb logcat -c
rem @adb logcat -s "MYDEBUG" *:S