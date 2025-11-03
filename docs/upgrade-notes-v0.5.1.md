# FirmaChain v0.5.1 Upgrade Notes (testnet)

## Overview

- Governance Proposal: https://explorer-testnet.firmachain.dev/proposals/454
- Target Block Height: `X,XXX,XXX` (Imperium)
- Upgrade Type: Chain upgrade by governance software upgrade proposal

## Changes

**Upgrade chain binary**
- Chain binary : v0.5.0 -> v0.5.1

**Upgrade module**
- **cosmos-sdk (Cosmos SDK)** : v0.50.12 -> v0.50.14
- **IBC-go (IBC)** : v8.6.1 -> v8.7.0
- **wasmd (CosmWasm)** : v0.54.0 -> v0.54.2
- **CometBFT (Consensus)** : v0.38.17 -> v0.38.18

**Requirements**
- Go : v1.21 or newer (same as Firmachain v0.5.0)

**Ecosystem Requirements**
- **firma-js** : v0.3.8 or newer

## Tests

Comprehensive end-to-end (E2E) testing was completed in the devnet environment, verifying the upgrade’s stability.
