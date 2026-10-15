# Tabletop Life Counter

A free life counter for 2–6 players: life totals, poison, commander damage, monarch,
extra counters, and a finger chooser for who goes first.

## Install on Android

1. On your phone, open the **[Releases page](../../releases/latest)** for this project.
2. Under **Assets**, tap **LifeCounter.apk** to download it.
3. Open the downloaded file (from the notification, or the **Files** / **Downloads** app).
4. If your phone says installing apps from this source isn't allowed, tap **Settings**,
   turn on **Allow from this source**, then go back.
5. Tap **Install**. If Google Play Protect warns about an unknown app, tap
   **More details > Install anyway**. The warning appears because the app isn't from the Play Store.
6. Open **Life Counter** from your home screen or app drawer.

**Updating:** if installing a newer version fails with "App not installed" or a conflict
message, uninstall Life Counter first, then install the new file. This clears any game in progress.

## Install on iPhone

iPhone testing goes through Apple's **TestFlight** app.

1. Install **TestFlight** from the App Store (it's free and made by Apple).
2. Open this invite link on the iPhone: **TESTFLIGHT_LINK_HERE**
3. Tap **Accept**, then **Install**.
4. Open **Life Counter** from your home screen.

TestFlight builds expire after 90 days. When a new one is out, TestFlight will offer the update.

## How to use it

- **Start:** pick the number of players, then where everyone is sitting.
- **Life:** tap the top half of your tile to add 1, the bottom half to subtract 1. Hold to change quickly.
- **Counters:** pull up from the bottom edge of your tile to add poison, commander damage, monarch or icon counters.
- **Colour:** pull down from the top edge of your tile to pick your colour.
- **Menu:** the round button in the middle has new game, starting life, coin flip, finger chooser and history.

---

## For the maintainer

| Folder | What it is |
|---|---|
| `android/` | Android Studio project |
| `ios/` | Xcode project |
| `web/` | Home-screen web app version |

The counter is one HTML file, copied into `android/app/src/main/assets/index.html`,
`ios/LifeCounter/index.html` and `web/index.html`.

**Publishing an Android release:** bump `versionCode` and `versionName` in `android/app/build.gradle`,
commit, then create and push a tag such as `v1.5` (GitHub Desktop: History, right-click the commit,
Create Tag, then Push). GitHub builds the APK and attaches it to a new release automatically.
Any push that changes `android/` also builds a test APK, found under the **Actions** tab.
