# Contributing to Kampala EV Trip

Thanks for helping build safer EV charging and battery-swap access in Uganda.

## First principles

- **Safety beats convenience.** Never present an unverified station, connector, battery, route, or status as safe or live.
- **Compatibility is strict.** A similar plug, voltage, brand, or battery appearance is not proof that a swap or charge is compatible.
- **Offline first.** Core station data, saved locations, reports, and map packs must remain useful without internet.
- **Privacy by design.** Do not collect or publish a rider's name, phone number, live location, route history, battery serial number, credentials, payment details, vehicle identifier, or raw BMS telemetry.
- **Reports are observations.** Community reports must retain source, time, evidence where appropriate, expiry, and review status. They must never silently overwrite an operator record.
- **Read-only integrations.** Contributions must not control a vehicle, motor, braking, lock, charging session, firmware, or BMS settings.

## How to help

1. Search existing issues before opening a new one.
2. Use the issue templates for bugs and station data corrections.
3. For code changes, fork the repository and submit a focused pull request with testing notes.
4. Never commit API keys, passwords, tokens, signing keys, `.env` files, user data, or private station/operator information.

## Station-data contributions

Report only what you personally observed or can cite from a credible operator source: safe public location, service-unit type, operator/network, compatibility evidence, observation date/time, condition, and permitted public evidence.

Do **not** publish private access codes, staff phone numbers, customer data, payment credentials, security-sensitive stock details, or precise rider locations.

## Pull-request checklist

- [ ] No secrets, personal data, or signing material included
- [ ] No claims of live status without an authorised live data source
- [ ] Compatibility logic fails safe when data is missing or uncertain
- [ ] Offline behaviour remains usable
- [ ] Safety/privacy implications described
- [ ] Tested on an Android device or emulator where relevant

By contributing, you agree that your contribution is licensed under Apache-2.0.
