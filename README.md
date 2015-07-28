# LibGDX + Ruboto = JRuby Android Game

This is a sample of how to integrate libGDX (1.6.1) with Ruboto (1.3.0). The aim is only to get things working, with as much code on the Java side as possible.

This project feeds into [Terrace](http://github.com/ashes999/terrace).

# Running this sample

- Edit `src/terrace_game.rb`. Change whatever you want (eg. background colour, sprite position)
- Run `rake debug`
- Deploy `bin/Libgdx-debug.apk` to your Android device/emulator.
- Rejoice.

# How this Repo was Made

There are other repositories that demonstrate integration (not for Android), but which are now dead. Here's what we did to make this work:

- Get libGDX working on Android
- Get libGDX working for Desktop with JRuby
- Create a new Ruboto project
- Copy over all required JAR files and `.so` files from the `Android` project (and Gradle/Maven repositories) into `libs`. This list depends on if you  need box2d or not
- Copy over the `assets` directory from the Core project
- Copy the relevant Core and Android `Launcher` and `Game` classes into `src`
- Update `AndroidManifest.xml` to launch the `AndroidLauncher` activity
- Run `rake debug` and test on an emulated device
