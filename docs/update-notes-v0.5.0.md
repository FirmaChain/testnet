# FirmaChain v0.5.0 Upgrade Notes

This document was created to transparently share the testnet upgrade process.

## Overview

- Governance Proposal:https://explorer-testnet.firmachain.dev/proposals/42
- Target Block Height : `3,555,000` (Imperium)
- Upgrade Type: Soft-fork by governance software upgrade proposal

</br>

## Changes

**Upgrade chain binary**
- Chain binary : v0.4.0 -> v0.5.0

**Upgrade module**
- **cosmos-sdk (Cosmos SDK)** : v0.45.16 -> v0.50.12 **[Major Upgrade]**
- **IBC-go (IBC)** : v4.4.0 -> v8.6.1 **[Major Upgrade]**
- **wasmd (CosmWasm)** : v0.33.0 -> v0.54.0 (WasmVM 2.2.1) **[Major Upgrade]**
- **CometBFT (Consensus)** : v0.34.33 -> v0.38.17 **[Major Upgrade]**

**Requirements**
- Go : v1.21 or newer (same as Firmachain v0.4.0)

**Ecosystem Requirements**
- **firma-js** : v0.3.0 or newer **[Major Upgrade]**

**New modules**
- sdk module : `x/circuit`
- ibc middleware : `packet-forward-middleware`
- ibc module : `ibc-hooks`, `ibc-fee`, `ica-host`, `icq`

**New Governance Parameters**
- MinInitialDepositRatio : `0.5`
- ProposalCancelRatio : `0.5`
- ProposalCancelDest : `firma1kvlelvv6u7h4jasqlpu956czt4543xqzc37h2v`

</br>

## Installation Process

 The `firmachaind` process will automatically be stopped at block height `(TBD)`. But the process will still remain in alive state. So you have to manually kill `firmachaind` process.

```bash
> pkill firmachaind
```

</br>

We recommend you backup existing block chain data as follows or in whatever way you see fit. 
```bash
> cp -r .firmachain .firmachain_v040
> tar -cvf firmachain_v040.tar .firmachain
```

</br>

Now you're ready to install the new binary.

```bash
> git clone https://github.com/FirmaChain/firmachain.git
> cd firmachain
> git checkout v0.5.0-alpha1
> make install

> ~/go/bin/firmachaind version
0.5.0

> mv ~/go/bin/firmachaind /usr/local/bin/firmachaind

> firmachaind version --long
name: Firmachain
server_name: firmachaind
version: 0.5.0-alpha1
commit: 8a3401ba35a1b9f319ea1c265554c1e5da33817d
build_tags: ',ledger'
go: go version go1.23.4 darwin/amd64
...
cosmos_sdk_version: v0.50.12
```

</br>

Once you've completed all of the above without any problems, please restart the chain.

```
> firmachaind start
```
