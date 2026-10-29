# Emulator Feature Test Checklist

Use this checklist after each build. This is a prototype: record unexpected behaviour in a GitHub issue and never treat the app as a live station or vehicle-control system.

## 1. App opens

- [ ] Start the emulator and press **Run** in Android Studio.
- [ ] Confirm the app opens as **Kampala EV Trip**.
- [ ] Confirm the launcher icon shows the blue route pin and white EV bolt.
- [ ] Confirm the first screen says **Kampala energy trip**.

Expected: a trip dashboard opens without a crash.

## 2. Default compatibility and routing

- [ ] Confirm the default vehicle profile is Zembo + Battery swap.
- [ ] Confirm **Zembo · Bugolobi** is labelled **Compatible**.
- [ ] Press **Prepare safe route**.

Expected: the message says a safe route is prepared and gives an arrival reserve. It must still say station status should be checked at arrival.

## 3. Strict network compatibility

- [ ] Open **Vehicle**.
- [ ] Change the vehicle brand/network to GOGO and save.
- [ ] Return to the trip dashboard and press **Prepare safe route**.

Expected: the Zembo station is no longer labelled compatible, and route preparation refuses to call it safe.

- [ ] Change the profile back to Zembo + Battery swap and save.

Expected: compatibility returns.

## 4. Battery estimate

- [ ] Open **Vehicle**.
- [ ] Move the battery slider to a lower value, then return to the trip screen.

Expected: conservative range and arrival reserve change. The app must not call this a live battery reading.

## 5. Offline mode display

- [ ] On the trip dashboard, tap **Use live updates**.
- [ ] Confirm the label changes to **Live updates active**.
- [ ] Tap **Use offline data**.

Expected: the label returns to **Offline pack in use**. This is UI state only; the current prototype has no authorised live operator feed.

## 6. Station field report

- [ ] Open **Report station**.
- [ ] Select a condition such as **Access blocked**.
- [ ] Select the service unit checked.
- [ ] Add a safe, non-personal note.
- [ ] Press **Save report offline**.

Expected: the app returns to the dashboard and says the report is saved offline and queued for review. It must not show the report as live operator data.

## 7. Prototype limitation check

- [ ] Close the app fully and reopen it.

Expected today: vehicle changes and local report queue may reset because durable on-device storage is not built yet. Record this as expected prototype behaviour, not a live-data failure.

## File a useful issue

Include Android version, emulator/device model, what you did, what you expected, what happened, and screenshots with personal details removed. Do not post credentials, phone numbers, exact home locations, private station access details, payments, or security-sensitive station information.
