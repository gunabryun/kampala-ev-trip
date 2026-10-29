# Data and Safety Rules

## What the project may use

- public station details and operator-approved information;
- public map data under its applicable licence;
- consented, read-only vehicle telemetry;
- community observations with timestamp, source, and review status.

## What must not enter the public repository

- passwords, API keys, access tokens, signing keys, private certificates;
- phone numbers, home addresses, live rider locations, trip history, contacts, payment details, battery serial numbers, or raw identifiable telemetry;
- private station access instructions, restricted facility details, or information that could create a security risk;
- scraped or copied data without a right to use it.

## Recommendation rules

A low-energy route can recommend a station only when vehicle class, approved connector or swap network, battery family, electrical limits, access, operational condition, and arrival reserve are confirmed. Unknown means **needs confirmation**, not safe.

## Community reporting

Reports are observations, not proof of operator status. They should state what was observed, when, and how confident the reporter is, then be reviewed before changing canonical station data. The interface must show operator-provided, community-reported, cached, stale, manual, or unverified status.
