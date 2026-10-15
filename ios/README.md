# Tabletop Life Counter (iPhone)

An iPhone app that shows the life counter full screen. The whole counter is one file: `LifeCounter/index.html`.

Needs a Mac with Xcode 16 or newer.

## Put it on your own iPhone
1. Double-click `LifeCounter.xcodeproj`.
2. Click the blue LifeCounter project at the top of the left panel, pick the LifeCounter target, open
   "Signing & Capabilities", and choose your Apple ID under Team. If the bundle identifier is rejected as
   taken, change it to something unique, for example `com.yourname.lifecounter`.
3. Plug in the iPhone, choose it in the device list at the top of the window, and press the Run (play) button.
4. On the phone, the first time: Settings > General > VPN & Device Management > trust your developer profile.
   The phone may also ask you to turn on Developer Mode (Settings > Privacy & Security).

With a free Apple ID the app stops opening after 7 days until you press Run again.
The App Store and TestFlight need the paid Apple Developer Program.
