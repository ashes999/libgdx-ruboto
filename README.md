# LibGDX + Ruboto = JRuby Android Game

This is a sample of how to integrate libGDX (1.6.1) with Ruboto (1.3.0). The aim is only to get things working, with as much code on the Java side as possible.

This project feeds into [Terrace](http://github.com/ashes999/terrace).

# How this Repo was Made

There are other repositories that demonstrate integration (not for Android), but which are now dead. Here's what we did to make this work:

- Get libGDX working on Android
- Get libGDX working for Desktop with JRuby
- Create a new Ruboto project
- Copy over all required JAR files and `.so` files into `libs` from the `Android` project (and Gradle/Maven repositories)
- Copy over the `assets` directory from the Core project
- Update `AndroidManifest.xml` to match SDK versions and orientation
- Copy the relevant Core and Android launchers into `src`
- Run `rake debug` and test on an emulated device

