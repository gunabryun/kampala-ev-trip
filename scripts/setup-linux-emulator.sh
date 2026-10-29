#!/usr/bin/env bash
# Creates an Android 15 / API 35 emulator for Kampala EV Trip on Linux.
# Run from a terminal after Android Studio has installed its Android SDK.
set -euo pipefail

SDK_ROOT="${ANDROID_SDK_ROOT:-${ANDROID_HOME:-$HOME/Android/Sdk}}"
CMDLINE="$SDK_ROOT/cmdline-tools/latest/bin"
SDKMANAGER="$CMDLINE/sdkmanager"
AVDMANAGER="$CMDLINE/avdmanager"

if [[ ! -x "$SDKMANAGER" || ! -x "$AVDMANAGER" ]]; then
  echo "Android SDK command-line tools were not found at: $CMDLINE"
  echo "Open Android Studio → Tools → SDK Manager → SDK Tools, then install Android SDK Command-line Tools (latest)."
  exit 1
fi

if [[ "$(uname -m)" == "x86_64" ]]; then
  IMAGE="system-images;android-35;google_apis;x86_64"
else
  IMAGE="system-images;android-35;google_apis;arm64-v8a"
fi

echo "Using Android SDK: $SDK_ROOT"
echo "Installing Android 15 emulator components…"
yes | "$SDKMANAGER" --licenses >/dev/null
"$SDKMANAGER" --install "platform-tools" "emulator" "platforms;android-35" "$IMAGE"

mkdir -p "$HOME/.android/avd"
echo no | "$AVDMANAGER" create avd --force --name "KampalaEVTrip_API35" --package "$IMAGE" --device "pixel_6"

echo
echo "Emulator created: KampalaEVTrip_API35"
echo "Open Android Studio → Tools → Device Manager → start KampalaEVTrip_API35 → press Run ▶."
if [[ ! -e /dev/kvm ]]; then
  echo
  echo "Note: /dev/kvm was not found. The emulator may be very slow until hardware virtualisation is enabled."
  echo "On Ubuntu/Debian: sudo apt install qemu-kvm && sudo usermod -aG kvm $USER"
  echo "Then log out and back in. Also enable VT-x/AMD-V in BIOS/UEFI if needed."
fi
