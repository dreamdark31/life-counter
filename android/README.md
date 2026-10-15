# Tabletop Life Counter (Android)

A small Android app that shows the life counter full screen. The whole counter is one file:
`app/src/main/assets/index.html`.

## Build with Android Studio
1. Open this folder in Android Studio and let it finish syncing.
2. Build > Build App Bundle(s) / APK(s) > Build APK(s).
3. The APK is at `app/build/outputs/apk/debug/app-debug.apk`. Copy it to the phone and open it to install
   (allow "install unknown apps" when asked).

## Build without installing anything (GitHub)
1. Create a private GitHub repository and upload this folder's contents.
2. Open the Actions tab; the "Build APK" run starts on its own.
3. When it finishes, download `LifeCounter-apk` from the run's page; the APK is inside.
