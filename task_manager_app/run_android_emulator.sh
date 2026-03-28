#!/usr/bin/env bash
# Boot Pixel 5 API 34 if no emulator is online, then flutter run on that device.
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

EMULATOR_ID="${ANDROID_EMULATOR_ID:-Pixel_5_API_34}"

has_emulator_device() {
  adb devices 2>/dev/null | grep -E 'emulator-[0-9]+[[:space:]]+device' -q
}

if ! has_emulator_device; then
  echo "No Android emulator detected — launching $EMULATOR_ID ..."
  flutter emulators --launch "$EMULATOR_ID"
  adb wait-for-device
  echo "Waiting for boot to complete..."
  for _ in $(seq 1 60); do
    boot="$(adb shell getprop sys.boot_completed 2>/dev/null | tr -d '\r' || true)"
    if [[ "$boot" == "1" ]]; then
      break
    fi
    sleep 2
  done
fi

DEV="$(adb devices | grep -E 'emulator-[0-9]+' | awk '/device$/ {print $1}' | head -1)"
if [[ -z "${DEV}" ]]; then
  echo "Could not find a running Android emulator. Run: flutter emulators"
  exit 1
fi

echo "Running Flutter on: $DEV"
exec flutter run -d "$DEV" "$@"
