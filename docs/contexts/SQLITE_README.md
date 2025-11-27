# SQLite Configuration

How to configure your sqlite local environment.

## Configure your Android Debug Bridge (ADB)

Find your Android path

```bash
echo $ANDROID_HOME # Find your local android path 
/Users/Lucas/Library/Android/sdk

# Then

cd $ANDROID_HOME/platform-tools

# Or

cd /Users/Lucas/Library/Android/sdk/platform-tools
```

In platform-tools folder we can start a new **Android Debug Bridge** shell with ```adb shell``` command

```bash
/Users/Lucas/Library/Android/sdk/platform-tools adb shell
```

Inside adb shell run this commands to add all permission to *app_flutter* folder and  *Master.db* file and then copy database file to sdcard to pull this data later

```bash
run-as com.example.inker_studio
chmod 777 app_flutter
chmod 777 app_flutter/Master.db
cp app_flutter/Master.db /sdcard
```

Finally pull Master.db to local environment with this script.

```bash
adb shell "run-as com.example.inker_studio cat /data/data/com.example.inker_studio/app_flutter/Master.db" > Master.db
```

Or run syncDb script

```bash
sh ./syncDb.bash
```

Is Ready ! now you have a copy of sqlite database in your app folder, use wisely.

### (Hey! open it with your favorite DB client :wink: )
