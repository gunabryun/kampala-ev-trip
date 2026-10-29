# Kampala EV Trip

**An offline-first Android prototype for safer EV charging and battery-swap discovery, starting in Kampala, Uganda.**

Kampala EV Trip is being built openly with riders, EV operators, map contributors, and developers. The goal is useful station information even when data is expensive, signal is weak, or a rider is already far from the next refill point.

> **Prototype warning:** this is not a certified navigation, charging, or vehicle-control product. Never rely on it alone for a low-battery decision. Confirm access, compatibility, and station condition at the location.

## What works today

- Manual vehicle profile and battery estimate
- Strict swap-network matching for Zembo, GOGO and Spiro profiles
- Conservative arrival-reserve estimates
- Offline-mode interface and locally queued station observations
- A first Android test build for field trials

## What we are building next

1. Persistent on-device database for vehicle details and reports
2. Offline Kampala map pack and routing
3. Field-verified station/service-unit records
4. Review workflow for community observations
5. Opt-in, read-only vehicle/BMS integrations where authorised
6. Expansion from Kampala to the rest of Uganda

## Safety rules

A nearby location is **not** automatically a safe refill point. A route may recommend a station only when the vehicle class, approved connector or exact swap network, battery family, electrical limits, site access, operational condition, and conservative arrival reserve are confirmed.

Unknown, manual, cached, stale, or unverified information must be labelled clearly. Community reports are observations awaiting review, never automatic proof of live operator status.

The project does not control a motorcycle, vehicle, battery, charging session, lock, firmware, or BMS settings. Any future vehicle integration is read-only and opt-in.

## Build on Linux

### You need

- A Linux PC with at least 8 GB RAM and about 15 GB free disk space
- [Android Studio](https://developer.android.com/studio), latest stable
- An Android phone with a USB cable, or an Android emulator

### Run the prototype

1. Clone or download this repository.
2. Install Android Studio. In its setup wizard, accept the Android SDK, Platform Tools and embedded JDK.
3. Choose **Open** and select this repository folder.
4. Let **Gradle Sync** finish. If asked, accept Android Studio's recommended SDK and JDK.
5. On the phone, enable **Developer options → USB debugging**.
6. Connect it by USB and approve the debugging prompt.
7. Select the phone in Android Studio and press **Run ▶**.

To create an installable test APK: **Build → Build APK(s)**. It is normally created at `app/build/outputs/apk/debug/app-debug.apk`.

## Help build it

Please read [CONTRIBUTING.md](CONTRIBUTING.md), [DATA_AND_SAFETY.md](DATA_AND_SAFETY.md), [SECURITY.md](SECURITY.md), and our [Code of Conduct](CODE_OF_CONDUCT.md) before participating.

Open an issue to report a bug, suggest a feature, or correct public station data. Never post passwords, private access instructions, personal data, precise live rider locations, payment details, or any unsafe vehicle-control idea.

## Open source licence

Released under the [Apache License 2.0](LICENSE). The project name and future brand assets are not automatically granted as trademarks.

## Project status

Early community prototype. Public contributions are welcome; maintainers review all changes before merging. The app has no authorised live operator feed yet and does not claim one.
