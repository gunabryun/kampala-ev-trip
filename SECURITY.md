# Security Policy

## Scope

This is an early Android prototype. Treat it as non-production software.

## Please report privately

Do not open a public issue for a suspected vulnerability, exposed secret, personal-data leak, unsafe vehicle-control path, or weakness that could put riders, stations, or operators at risk. Email **gunabryun007@gmail.com** with a clear description, affected version or commit, safe reproduction steps, and impact.

Do not include real credentials, payment details, private station access data, or personal data in the report.

## Safety boundary

The app must remain read-only for vehicle and BMS integrations. It is not a safety-certified navigation, charging, or vehicle-control system. If data is stale, manual, unverified, unavailable, or incompatible, the app must say so and fail safe.
