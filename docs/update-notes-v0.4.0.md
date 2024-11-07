# FirmaChain v0.4.0 Upgrade Notes

This document was created to transparently share the testnet upgrade process.

## Overview

- Governance Proposal:https://explorer-testnet.firmachain.dev/proposals/22
- Target Block Height : `12,038,000`
- Upgrade Type: Soft-fork by governance software upgrade proposal

</br>

## Changes

**Upgrade chain binary**
- Chain binary : v0.3.5 -> v0.4.0

**Upgrade module**
- cosmos-sdk(Cosmos SDK) : v0.45.9 -> v0.45.16
- IBC-go(IBC) : v3.3.0 -> v4.4.0
- wasmd(CosmWasm) : v0.29.2 -> v0.33.0

**Replace module**
- Tendermint : v0.34.21 -> CometBFT : v0.34.33

**Requirements**
- Go : v1.18 -> v1.21


</br>

## Installation Process

 The `firmachaind` process will automatically be stopped at block height `12,038,000`. But the process will still remain in alive state. So you have to manually kill `firmachaind` process.

```bash
> pkill firmachaind
```

</br>

We recommend you backup existing block chain data as follows or in whatever way you see fit. 
```bash
> cp -r .firmachain .firmachain_v035
> tar -cvf firmachain_v035.tar .firmachain
```

</br>

Now you're ready to install the new binary.

```bash
> git clone https://github.com/FirmaChain/firmachain.git
> cd firmachain
> git checkout v0.4.0-alpha1
> make install

> ~/go/bin/firmachaind version
0.4.0

> mv ~/go/bin/firmachaind /usr/local/bin/firmachaind

> firmachaind version --long
name: Firmachain
server_name: firmachaind
version: 0.4.0-alpha1
commit: c5413e05e80582f092103927f2ba285fb0db9b38
build_tags: ',ledger'
go: go version go1.23.2 darwin/amd64
...
cosmos_sdk_version: v0.45.16
```

</br>

Once you've completed all of the above without any problems, let's restart the chain.

```
> firmachaind start
```
