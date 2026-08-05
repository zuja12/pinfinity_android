# Infinity robot app patch

In this readme you find the actions needed to patch the infinity robot app.

## base tools folder

All my tools are in one folder, for now `<toolsfolder>`, to make
handling this process easier. So all my cmd files are in this folder and
this folder is added to the PATH environment parameter.\
You can choose to add these tools to the pinfinity_android clone folder.  

**You allways need the first two tools.**

### adb.cmd

``` cmd
@"<androidfolder>\platform-tools\adb" %* 
```

Depending on your installation adb.exe can be anywhere on your PC, but
mostly `C:\Program Files (x86)\Android\android-sdk\`, for now `<androidfolder>`,
when your working with an Android platform. See also
https://developer.android.com/tools/adb.

### apktool.cmd

``` cmd
@ECHO OFF
del %2\build\apk\*.dex
java -jar <toolsfolder>\apktool.jar %* -v
```

apktool jar can be found on https://apktool.org/.

### apk-infinity

The original sourcecode can be downloaded from
https://github.com/niklashigi/apk-mitm, but the `apk-infinity` folder in
this repository can be used for all the patching work (pinning and aws
bypass). The new patched apk can be installed on your android device and
this will work. A little caveat, you need my Raspberry pi solution, or
the original solution of Niklas Higi --\>
https://github.com/Wolle-Lukas/pinfinity. This version works exactly
like the original `apk-mitm`, but does also the extra work for the aws
bypass.

If you want to the patching yourselves, then first use the original
`apk-mitm` and use this new patched apk in chapter [`extract apk`](#extract-apk).

This is what you need to do do using the `apk-infinity` folder:
``` cmd
git clone https://github.com/zuja/pinfinity-android
cd apk-infinity
npm install
npm run build
node bin/apk-mitm "JOOLA+Infinity_2.1.1_APKPure.apk"
```
Naturally, you need to have nodejs and npm installed on your PC. See https://docs.npmjs.com/downloading-and-installing-node-js-and-npm.

### extract apk

If you want to do all the patchwork youself, you will need the instructions below.

First use the command `git clone https://github.com/niklashigi/apk-mitm`
and follow the README.md in this repository.

With the patched apk (with apk-mitm) do the following:

``` cmd
apktool d JOOLA+Infinity_2.1.1_APKPure-patched.apk
```
The extract will be in the `JOOLA+Infinity_2.1.1_APKPure-patched` folder.

The original Joola Infinity APKs can be found on
https://apkpure.com/joola-infinity/com.joola.infinity/versions.

> Note: apk-mitm converts an apk (apk or xapk) automatically to a normal apk.

> Note: This hack only works for version 2.1.1 and lower. All the versions higher are based on the pickleball robot and there is no support for the tabletennis robot anymore.\
> The hack still works for the AWS login, but you do not get the play icon.

#### generate jks key file

``` cmd
keytool -genkeypair -v -keystore my-release-key.jks -alias mykey -keyalg RSA -keysize 2048 -validity 10000
```

keytool is a tool of the Java installation and usually resides in its
bin folder. Normally the bin folder is in your Path setting and will be
found automatically. For this project
https://openjdk.org/projects/jdk/24/ was used (download from
https://jdk.java.net/ or
https://www.oracle.com/de/java/technologies/javase/jdk24-archive-downloads.html).

#### apksigner.cmd

``` cmd
@echo off
@java -jar "<androidfolder>\build-tools\35.0.0\lib\apksigner.jar" %* 
```

The apksigner jar can also be found on
https://developer.android.com/studio/command-line/apksigner.

#### compile.cmd

This cmd file creates the new apk file and installs it on the connected
android phone through adb. If you want to debug the app, you will need to remove the `REM` statements. My debug smali generates debug information with the text `MYDEBUG`. When you use `adb logcat`, you will see all debug information, also from others apps and system.

``` cmd
@call apktool b "new_2.1.1" -o app-unsigned.apk
@call apksigner sign --ks my-release-key.jks --out app-signed.apk --ks-pass pass:joola12 --key-pass pass:joola12 app-unsigned.apk
@call adb install -r -t -d app-signed.apk
REM @call adb logcat -c
REM @adb logcat -s "MYDEBUG" *:S
```

# Final login hack

All these hacks are handle by the ***apk-infinity*** app, so you do not
need to do these changes manual.

The changes are in the following files.: 
* `\smali\com\amazonaws\mobileconnectors\cognitoidentityprovider\CognitoUserSession.smali`
* `\smali\com\amazonaws\mobileconnectors\cognitoidentityprovider\CognitoUser.smali`


## CognitoUserSession.smali

``` c
.method public final a()Ljava/lang/String;
    .locals 3
    const-string v0, "infinity@nowhere.com"
    return-object v0
The rest remains the same, but that code is not reached.

.method public final b()Z
    .locals 5
    # const/4 v0, 0x0
    const/4 v0, 0x1
    return v0
The rest remains the same, but that code is not reached.

.method public final c()Z
    .locals 7
    # const/4 v0, 0x0
    const/4 v0, 0x1
    return v0
The rest remains the same, but that code is not reached.
```

## CognitoUser.smali

* `.method public constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Landroid/content/Context;)V`
* `.method public final C()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;`  
This is the `getCachedSession()` routine
* `.method public final s()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;`   
This is the `getSession()` routine.

Both routines have been altered to insert static tokens that have a
longer lifetime. When you want to change the tokens, look at `Tokens.py` to create the necessary tokens.

### constructor

``` c
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 3
    iput-object p7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 4
    # username, was p2
    const-string v1, "infinity@nowhere.com"
    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 6
    # clientId, was p3
    const-string v1, "1i2fo3hm4d5m6bf789vj01q2ea"
    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 7
    # clientSecret
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 8
    # secretHash
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    # userId
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 10
    # deviceKey
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    return-void
.end method
```

### getSession()

``` c
.method public final s()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 5

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l()V

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "123456789012345678901"

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 6
    :cond_1
    :try_start_1
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    const-string v2, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJpc3MiOiJodHRwczovL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tL3VzLWVhc3QtMV96RURmWEJ6NGIiLCJhdWQiOiIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNzgyODY0MDAwLjAsImlhdCI6MTc4Mjg2NDAwMC4wLCJleHAiOjIyMjQ3MTM2MDAuMCwianRpIjoiZjZiMGNjZTUtZjc3Ny00NmU5LThkZTAtN2VhNzllYjY1NDYwIiwib3JpZ2luX2p0aSI6IjEyZTNhNGI1LWJlNjctODlmMC1iMWIyLTNiZjQ1NmI3ODkwMSIsImV2ZW50X2lkIjoiMTJkMzRhYjUtNjc4OS0wMTJhLWJiYzMtNDVjNmY3ZmQ4Y2Y5IiwiY29nbml0bzpncm91cHMiOlsiRlJFRVVTRVIiXSwiY29nbml0bzpyb2xlcyI6WyJhcm46YXdzOmlhbTo6MzkxOTU5MjE4MjU3OnJvbGUvQW1hem9uRVNDb2duaXRvQWNjZXNzIl0sImNvZ25pdG86dXNlcm5hbWUiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJjdXN0b206cm9sZSI6IkZSRUVVU0VSIiwiZ2VuZGVyIjoiTWFsZSIsIm5pY2tuYW1lIjoiaW5maW5pdHkxMjM0NTY3IiwiZW1haWwiOiJpbmZpbml0eUBub3doZXJlLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwic29jaWFsX2xvZ2luIjoibm8iLCJpZGVudGl0aWVzIjpbeyJ1c2VySWQiOiIxMjM0NTY3ODkwMTIzNDU2Nzg5MDEiLCJwcm92aWRlck5hbWUiOiJHb29nbGUiLCJwcm92aWRlclR5cGUiOiJHb29nbGUiLCJpc3N1ZXIiOm51bGwsInByaW1hcnkiOiJmYWxzZSIsImRhdGVDcmVhdGVkIjoiMTc3OTEyMTIyMTY2NyJ9XSwiY3VzdG9tOmdvb2dsZV9wcm9maWxlX3BpYyI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FDZzhvY0lRUTZ4V3FIZTMwdGtBQkhsb1FFa1BQYy13SmJycmxWREdpRklzdEgwNWZBYz1zOTYtYyIsImN1c3RvbTpnb29nbGVfbmFtZSI6IkluZmluaXR5IiwiY3VzdG9tOmdvb2dsZV9saW5rZWQiOiJ5ZXMiLCJjdXN0b206bGlua2VkX2FjY291bnQiOiJ5ZXMiLCJjdXN0b206cHJpbWFyeV9hdHRyIjoiZW1haWwiLCJjdXN0b206c3FzX2FjY2VzcyI6IkFTSUFWV1FVWEJCWkk2WVFQSjU2IiwiY3VzdG9tOnNxc19zZWNyZXQiOiJuT21ZKzI3K1E2ZFlXVnJ5dXJTTXJEYU0reXJnNm85WkFWRGplNFFwIiwiY3VzdG9tOnNxc19leHBpcnkiOiIyMDI2LTA3LTMxIDEzOjIyOjAxIiwiY3VzdG9tOnNxc19zZXNzaW9uIjoiRndvR1pYSXZZWGR6RVBiLy8vLy8vLy93RWFERWMvZzdBa1p2dWpJMEFjSGlLdUFRY1RibVBWbzN6TDZzSGhLZ0U0dVdMTGZyZk84Y2pjT3ZDeUM0NXBoRTlUc0hhVGtMTjFqUFhPcGExdjM1Sm1LM2tWYjJ4NDFDbWM5YTNIa1h0aSBiOXJqOTRnbktydVB3NXlmV1ZqRWVUK09JRGRqS3ZzN1Q0SUZUMW5RVEhrK0VyL1h1R3lJTEtXKzBrSWlHSjgzczkzRUE3cHMrdlBwbWd2NmZSZE1pSFNZV0pwMkRrRWsrd3FCbUtSWGdUb2pWQ0sxR2E2YUd4cC9qUVdWVmZGWCsvZXZ3eEFZdWhTTENpU2hXVy9VeENqcHByTFRCakl0Ui9jY2d1WG1Ld1NYaHMrVjdza28wUk4xaTYzZ29aVlloUEYgQ2NFSExLTW5Pak1HZDBtQUNGZTI4WFJhUSIsImN1c3RvbTp2YWxpZGF0ZWRfZW1haWwiOiJpbmZpbml0eUBub3doZXJlLmNvbSJ9.7tD1tFB3jYCQLFuBmmWPUywD0xE8SznZ-2Tpy_9Udp4"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    const-string v3, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJpc3MiOiJodHRwczovL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tL3VzLWVhc3QtMV96RURmWEJ6NGIiLCJjbGllbnRfaWQiOiIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3ODI4NjQwMDAuMCwiaWF0IjoxNzgyODY0MDAwLjAsImV4cCI6MjIyNDcxMzYwMC4wLCJqdGkiOiIxMmUzYTRiNS1iZTY3LTg5ZjAtYjFiMi0zYmY0NTZiNzg5MDEiLCJvcmlnaW5fanRpIjoiMTJlM2E0YjUtYmU2Ny04OWYwLWIxYjItM2JmNDU2Yjc4OTAxIiwiZXZlbnRfaWQiOiIxMmQzNGFiNS02Nzg5LTAxMmEtYmJjMy00NWM2ZjdmZDhjZjkiLCJjb2duaXRvOmdyb3VwcyI6WyJGUkVFVVNFUiJdLCJ1c2VybmFtZSI6ImIxMjM0NTY3LWNkMTItMTJkYS0xMjM0LWVhZjFlMmJhMzQ1NiIsImRldmljZV9rZXkiOiJ1cy1lYXN0LTFfZmUyYzVkZWItZDU2YS00NDdhLWE0Y2UtZWJlMTJjODc3MDIyIn0.z2hQc6P0ujiNVh06sH0AUpWwFX-WtrvrMit-ghcXQ24"

    invoke-direct {v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    const-string v4, "eyJjdHkiOiAiSldUIiwgImVuYyI6ICJBMjU2R0NNIiwgImFsZyI6ICJSU0EtT0FFUCJ9.D6GNnxL6WtzWtBXoKB3FSp346afTqWrkHVb5mmK_d-Q.kmuHe-8TPKAnS_fM.eyJzdWIiOiAiYjEyMzQ1NjctY2QxMi0xMmRhLTEyMzQtZWFmMWUyYmEzNDU2IiwgImNsaWVudF9pZCI6ICIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsICJhdXRoX3RpbWUiOiAxNzgyODY0MDAwLjAsICJkZXZpY2Vfa2V5IjogInVzLWVhc3QtMV9mZTJjNWRlYi1kNTZhLTQ0N2EtYTRjZS1lYmUxMmM4NzcwMjIiLCAiaWF0IjogMTc4Mjg2NDAwMC4wLCAiZXhwIjogMjIyNDcxMzYwMC4wfQ.cd_1SRyTRsriwcyOMHjuNw"

    invoke-direct {v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-direct {v4, v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V

    iput-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 10
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    .line 11
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->C()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 14
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    .line 15
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->s()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
```

### getCachedSession()

    .method public final C()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
        .locals 9

        .line 1
        :try_start_0
        new-instance v0, Ljava/lang/StringBuilder;

        invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

        const-string v1, "CognitoIdentityProvider."

        invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

        invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        const-string v1, "."

        invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

        invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        const-string v2, ".idToken"

        invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

        move-result-object v0

        .line 2
        new-instance v2, Ljava/lang/StringBuilder;

        invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

        invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

        invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

        invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        const-string v3, ".accessToken"

        invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

        move-result-object v2

        .line 3
        new-instance v3, Ljava/lang/StringBuilder;

        invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

        invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

        invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        const-string v1, "."

        invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

        invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        const-string v1, ".refreshToken"

        invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

        invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

        move-result-object v1

        .line 4
        iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

        iget-object v3, v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

        const/4 v4, 0x0

        move-object v5, v4

        move-object v6, v4

        move-object v7, v4

        .line 5
        invoke-virtual {v3, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

        move-result v8

        if-eqz v8, :cond_0

        .line 6
        invoke-virtual {v3, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)Ljava/lang/String;

        move-result-object v8

        if-eqz v8, :cond_0

        .line 7
        new-instance v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

        invoke-direct {v5, v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V

        goto :goto_0

        .line 8
        :cond_0
        const-string v8, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJpc3MiOiJodHRwczovL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tL3VzLWVhc3QtMV96RURmWEJ6NGIiLCJhdWQiOiIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNzgyODY0MDAwLjAsImlhdCI6MTc4Mjg2NDAwMC4wLCJleHAiOjIyMjQ3MTM2MDAuMCwianRpIjoiZjZiMGNjZTUtZjc3Ny00NmU5LThkZTAtN2VhNzllYjY1NDYwIiwib3JpZ2luX2p0aSI6IjEyZTNhNGI1LWJlNjctODlmMC1iMWIyLTNiZjQ1NmI3ODkwMSIsImV2ZW50X2lkIjoiMTJkMzRhYjUtNjc4OS0wMTJhLWJiYzMtNDVjNmY3ZmQ4Y2Y5IiwiY29nbml0bzpncm91cHMiOlsiRlJFRVVTRVIiXSwiY29nbml0bzpyb2xlcyI6WyJhcm46YXdzOmlhbTo6MzkxOTU5MjE4MjU3OnJvbGUvQW1hem9uRVNDb2duaXRvQWNjZXNzIl0sImNvZ25pdG86dXNlcm5hbWUiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJjdXN0b206cm9sZSI6IkZSRUVVU0VSIiwiZ2VuZGVyIjoiTWFsZSIsIm5pY2tuYW1lIjoiaW5maW5pdHkxMjM0NTY3IiwiZW1haWwiOiJpbmZpbml0eUBub3doZXJlLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwic29jaWFsX2xvZ2luIjoibm8iLCJpZGVudGl0aWVzIjpbeyJ1c2VySWQiOiIxMjM0NTY3ODkwMTIzNDU2Nzg5MDEiLCJwcm92aWRlck5hbWUiOiJHb29nbGUiLCJwcm92aWRlclR5cGUiOiJHb29nbGUiLCJpc3N1ZXIiOm51bGwsInByaW1hcnkiOiJmYWxzZSIsImRhdGVDcmVhdGVkIjoiMTc3OTEyMTIyMTY2NyJ9XSwiY3VzdG9tOmdvb2dsZV9wcm9maWxlX3BpYyI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FDZzhvY0lRUTZ4V3FIZTMwdGtBQkhsb1FFa1BQYy13SmJycmxWREdpRklzdEgwNWZBYz1zOTYtYyIsImN1c3RvbTpnb29nbGVfbmFtZSI6IkluZmluaXR5IiwiY3VzdG9tOmdvb2dsZV9saW5rZWQiOiJ5ZXMiLCJjdXN0b206bGlua2VkX2FjY291bnQiOiJ5ZXMiLCJjdXN0b206cHJpbWFyeV9hdHRyIjoiZW1haWwiLCJjdXN0b206c3FzX2FjY2VzcyI6IkFTSUFWV1FVWEJCWkk2WVFQSjU2IiwiY3VzdG9tOnNxc19zZWNyZXQiOiJuT21ZKzI3K1E2ZFlXVnJ5dXJTTXJEYU0reXJnNm85WkFWRGplNFFwIiwiY3VzdG9tOnNxc19leHBpcnkiOiIyMDI2LTA3LTMxIDEzOjIyOjAxIiwiY3VzdG9tOnNxc19zZXNzaW9uIjoiRndvR1pYSXZZWGR6RVBiLy8vLy8vLy93RWFERWMvZzdBa1p2dWpJMEFjSGlLdUFRY1RibVBWbzN6TDZzSGhLZ0U0dVdMTGZyZk84Y2pjT3ZDeUM0NXBoRTlUc0hhVGtMTjFqUFhPcGExdjM1Sm1LM2tWYjJ4NDFDbWM5YTNIa1h0aSBiOXJqOTRnbktydVB3NXlmV1ZqRWVUK09JRGRqS3ZzN1Q0SUZUMW5RVEhrK0VyL1h1R3lJTEtXKzBrSWlHSjgzczkzRUE3cHMrdlBwbWd2NmZSZE1pSFNZV0pwMkRrRWsrd3FCbUtSWGdUb2pWQ0sxR2E2YUd4cC9qUVdWVmZGWCsvZXZ3eEFZdWhTTENpU2hXVy9VeENqcHByTFRCakl0Ui9jY2d1WG1Ld1NYaHMrVjdza28wUk4xaTYzZ29aVlloUEYgQ2NFSExLTW5Pak1HZDBtQUNGZTI4WFJhUSIsImN1c3RvbTp2YWxpZGF0ZWRfZW1haWwiOiJpbmZpbml0eUBub3doZXJlLmNvbSJ9.7tD1tFB3jYCQLFuBmmWPUywD0xE8SznZ-2Tpy_9Udp4"

        new-instance v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

        invoke-direct {v5, v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V

        invoke-virtual {v3, v0, v8}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V

        .line 9
        :cond_1
        :goto_0
        invoke-virtual {v3, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

        move-result v0

        if-eqz v0, :cond_2

        .line 10
        invoke-virtual {v3, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)Ljava/lang/String;

        move-result-object v0

        if-eqz v0, :cond_2

        .line 11
        new-instance v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

        invoke-direct {v6, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V

        goto :goto_1

        .line 12
        :cond_2
        const-string v0, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJpc3MiOiJodHRwczovL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tL3VzLWVhc3QtMV96RURmWEJ6NGIiLCJjbGllbnRfaWQiOiIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3ODI4NjQwMDAuMCwiaWF0IjoxNzgyODY0MDAwLjAsImV4cCI6MjIyNDcxMzYwMC4wLCJqdGkiOiIxMmUzYTRiNS1iZTY3LTg5ZjAtYjFiMi0zYmY0NTZiNzg5MDEiLCJvcmlnaW5fanRpIjoiMTJlM2E0YjUtYmU2Ny04OWYwLWIxYjItM2JmNDU2Yjc4OTAxIiwiZXZlbnRfaWQiOiIxMmQzNGFiNS02Nzg5LTAxMmEtYmJjMy00NWM2ZjdmZDhjZjkiLCJjb2duaXRvOmdyb3VwcyI6WyJGUkVFVVNFUiJdLCJ1c2VybmFtZSI6ImIxMjM0NTY3LWNkMTItMTJkYS0xMjM0LWVhZjFlMmJhMzQ1NiIsImRldmljZV9rZXkiOiJ1cy1lYXN0LTFfZmUyYzVkZWItZDU2YS00NDdhLWE0Y2UtZWJlMTJjODc3MDIyIn0.z2hQc6P0ujiNVh06sH0AUpWwFX-WtrvrMit-ghcXQ24"

        new-instance v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

        invoke-direct {v6, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V

        invoke-virtual {v3, v2, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V

        .line 13
        :cond_3
        :goto_1
        invoke-virtual {v3, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

        move-result v0

        if-eqz v0, :cond_4

        .line 14
        invoke-virtual {v3, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)Ljava/lang/String;

        move-result-object v0

        if-eqz v0, :cond_4

        .line 15
        new-instance v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

        invoke-direct {v7, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V

        goto :goto_2

        .line 16
        :cond_4
        const-string v0, "eyJjdHkiOiAiSldUIiwgImVuYyI6ICJBMjU2R0NNIiwgImFsZyI6ICJSU0EtT0FFUCJ9.D6GNnxL6WtzWtBXoKB3FSp346afTqWrkHVb5mmK_d-Q.kmuHe-8TPKAnS_fM.eyJzdWIiOiAiYjEyMzQ1NjctY2QxMi0xMmRhLTEyMzQtZWFmMWUyYmEzNDU2IiwgImNsaWVudF9pZCI6ICIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsICJhdXRoX3RpbWUiOiAxNzgyODY0MDAwLjAsICJkZXZpY2Vfa2V5IjogInVzLWVhc3QtMV9mZTJjNWRlYi1kNTZhLTQ0N2EtYTRjZS1lYmUxMmM4NzcwMjIiLCAiaWF0IjogMTc4Mjg2NDAwMC4wLCAiZXhwIjogMjIyNDcxMzYwMC4wfQ.cd_1SRyTRsriwcyOMHjuNw"

        new-instance v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

        invoke-direct {v7, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V

        invoke-virtual {v3, v1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V

        .line 17
        :cond_5
        :goto_2
        new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

        invoke-direct {v0, v5, v6, v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V
        :try_end_0
        .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

        return-object v0

        :catch_0
        move-exception v0

        .line 18
        sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

        const-string v2, "Error while reading the tokens from the persistent store."

        invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

        .line 19
        new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

        const/4 v1, 0x0

        invoke-direct {v0, v1, v1, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V

        return-object v0
    .end method

## Important files

* `\smali\com\joolarobot\ipong\ui\b.smali`  
This file helped me to find the connections. But did not need any changes.  
Specifically, `.method public final c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V`, aka the onsuccess routine.
* `\smali\com\joolarobot\ipong\ui\c$a$b.smali`    
Routine `.method public final d(Ljava/lang/Object;)Ljava/lang/Object;` aka the Resulthandler.
* `\smali\com\joolarobot\ipong\ui\login\model\LoginCognitoResponse.smali` 
The start of this adventure.


I have debugged several other smali file, and tried more than one method
to patch the Infinity app, but this method worked the best. It is not
perfect, as you can see when you start the app without the Raspberry pi
solution or another path to api-v6.admin.joola.com.

# My debug smali

The debug smali is used for debugging the smali source code.\
This smali is placed in
`\smali\com\joolarobot\ipong\utils\DebugUtils.smali` and in the header
is the calling method. v0 depends on the `.locals` statement. Normally I
add one to the `.locals` statement and vn is the v\[locals - 1\], but keep
in mind that you can use only 15 locals. You will get an error
superseeding this number.

``` c
.class public Lcom/joolarobot/ipong/utils/DebugUtils;
.super Ljava/lang/Object;
.source "SourceFile"
# This file is in JOOLA \smali\com\joolarobot\ipong\utils

# Zuja: My own debug routines

# usage:
# const-string v0, "Message to log"
# invoke-static {v0, p0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/lang/String;)V
# p0 can be any object, and the method will log all its fields and their values.
# invoke-static {v0, v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpStringFields(Ljava/lang/String;Ljava/lang/String;)V
# invoke-static {v0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpString(Ljava/lang/String;)V
# invoke-static {v0, v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpClassName(Ljava/lang/Object;Ljava/lang/String;)V
# invoke-static {v0, v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpInteger(Ljava/lang/String;I)V
# invoke-static {v0, v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpStringURI(Ljava/lang/String;Ljava/net/URI;)V
# invoke-static {v0, v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
# Be careful with dumpObjectFields, as it can log a lot of information, especially for complex objects.
# Als be careful with the variable v0, this depends on .locals and .registers used in the smali code.
# Make sure to adjust the register numbers accordingly when using these methods in different contexts.
# TAG is the tag you can use for the debugging.

.field private static final TAG:Ljava/lang/String;

.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MYDEBUG"

    sput-object v0, Lcom/joolarobot/ipong/utils/DebugUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static dumpDebug(Ljava/lang/String;)V
    .locals 1
    sget-object v0, Lcom/joolarobot/ipong/utils/DebugUtils;->TAG:Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method
.method public static dumpObjectFields(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    # .param p0, "Message"  # Ljava/lang/String;
    # .param p1, "obj"      # Ljava/lang/Object;

    if-nez p1, :cond_1

    const-string v1, "Object is null"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void

    :cond_1
    # Get the Class of the object
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    # Get all declared fields (including private)
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    # Log the number of fields
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== Dumping fields for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fields) ==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V

    # Walk through each field and log its name and value
    array-length v1, v0

    const/4 v2, 0x0

    :goto_36
    if-lt v2, v1, :cond_76

    # End of field dump
    const-string v1, "=== End of field dump ==="
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V

    return-void

    :cond_76
    aget-object v3, v0, v2

    # Make the field accessible (also private)
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    # Try to get the value of the field for the given object
    :try_start_40
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    # Build log message: field name = value
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Add the value (v4 is the field value)
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V

    :try_end_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_40 .. :try_end_60} :catch_63
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_60} :catch_61

    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :catch_61
    move-exception v3

    goto :goto_64

    :catch_63
    move-exception v3

    :goto_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V

    goto :goto_61
    return-void 
.end method

.method public static dumpStringFields(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    if-nez p1, :cond_1
    const-string v1, "Object is null"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/String;
    if-eqz v0, :not_a_string
    goto :a_string

    :not_a_string
    const-string v1, "Object is not a String"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    const-string v0, "p0: "
    invoke-static {v0, p0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpClassName(Ljava/lang/String;Ljava/lang/Object;)V
    const-string v0, "p1: "
    invoke-static {v0, p1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpClassName(Ljava/lang/String;Ljava/lang/Object;)V
    return-void

    :a_string
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void 
.end method
.method public static dumpBoolean(Ljava/lang/String;Z)V
    .locals 2
    if-eqz p1, :null_object
    goto :cond_1

    :null_object
    const-string v1, "Object is null"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void
    
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void
.end method
.method public static dumpInteger(Ljava/lang/String;I)V
    .locals 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void
.end method
.method public static dumpStringURL(Ljava/lang/String;Ljava/net/URL;)V
    .locals 3
    if-nez p1, :cond_1
    const-string v1, "Object is null"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void

    :cond_1
    instance-of v0, p1, Ljava/net/URL;
    if-nez v0, :is_URL_p1
    const-string v1, "Object is not a URL"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void

    :is_URL_p1
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;
    move-result-object v2
    instance-of v0, v2, Ljava/lang/String;
    if-eqz v0, :not_a_string
    goto :a_string

    :not_a_string
    const-string v1, "Object is not a String"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    const-string v0, "p0: "
    invoke-static {v0, p0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpClassName(Ljava/lang/String;Ljava/lang/Object;)V
    const-string v0, "p1: "
    invoke-static {v0, v2}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpClassName(Ljava/lang/String;Ljava/lang/Object;)V
    return-void

    :a_string
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void 
.end method
.method public static dumpString(Ljava/lang/String;)V
    .locals 2
    if-nez p0, :cond_8
    const-string v1, "Object is null"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void

    :cond_8
    instance-of v0, p0, Ljava/lang/String;
    if-eqz v0, :not_a_string
    goto :a_string

    :not_a_string
    const-string v1, "Object is not a String"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    const-string v0, "p0: "
    invoke-static {v0, p0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpClassName(Ljava/lang/String;Ljava/lang/Object;)V
    return-void

    :a_string
    invoke-static {p0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void 
.end method

.method public static dumpClassName(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void 
.end method
.method public static dumpMap(Ljava/lang/String; Ljava/util/Map;)V
    .locals 4

    if-nez p1, :cond_0
    const-string v1, " - Map is null"
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    return-void

    :cond_0
    # Log map size
    invoke-interface {p1}, Ljava/util/Map;->size()I
    move-result v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "Map size: "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V

    # Iterate through the entries
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object p1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :cond_1
    
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map$Entry;

    # Get key and value
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v0

    # Build log string
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "Key: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ", Value: "
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0

    invoke-static {v0}, Lcom/joolarobot/ipong/utils/DebugUtils;->dumpDebug(Ljava/lang/String;)V
    goto :goto_0

    :cond_1
    return-void
.end method
```

This smali can also be used in other APKs, but you will have to change
`Lcom/joolarobot/ipong/utils/DebugUtils` to
`L<your smali subfolder in the source code>/DebugUtils`. I know this is
not at all perfect, but it works ;-).

# That's all, folks!
