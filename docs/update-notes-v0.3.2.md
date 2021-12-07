# FirmaChain v0.3.2 Upgrade Notes

This document was created to transparently share the testnet upgrade process.

## Overview

- Governance Proposal: https://explorer-devnet.firmachain.org/proposals/20
- Target Block Height : `1,402,000`
- Upgrade Type: Soft-fork by governance software upgrade proposal

</br>

| |Before|After|
|--------|-----------|-----------|
|FirmaChain|[v0.3.1](https://github.com/firmachain/firmachain/releases/tag/v0.3.1)|[v0.3.2](https://github.com/firmachain/firmachain/releases/tag/v0.3.2)|
|Cosmos SDK|[v0.44.3](https://github.com/cosmos/cosmos-sdk/releases/tag/v0.44.3)|[v0.44.5](https://github.com/cosmos/cosmos-sdk/releases/tag/v0.44.5)|
|Tendermint|[v0.34.14](https://github.com/tendermint/tendermint/releases/tag/v0.34.14)|[v0.34.14](https://github.com/tendermint/tendermint/releases/tag/v0.34.14)|


</br>

## Main Changes

- Support Hardware Ledger
- Support Cosmos SDK 0.44.5

</br>

## Installation Process

 The `firmachaind` process will automatically be stopped at block height `1,402,000`. But the process will still remain in alive state. So you have to manually kill `firmachaind` process.

```bash
> pkill firmachaind
```

</br>

We recommend you backup existing block chain data as follows or in whatever way you see fit. 
```bash
> cp -r .firmachain .firmachain_v031
> tar -cvf firmachain_v031.tar .firmachain
```

</br>

Now you're ready to install the new binary.

```bash
> curl https://build.firmachain.org/@v0.3.2 | bash
> sudo mv ./firmachaind /usr/local/bin/firmachaind

> firmachaind version
0.3.2

> firmachaind version --long
name: Firmachain
server_name: firmachaind
version: 0.3.2
commit: 25cadd13db4b352270aec80f8848813de8a710d7
build_tags: ""
go: go version go1.16.8 linux/amd64
...
cosmos_sdk_version: v0.44.5

> sha1sum firmachaind
8334447a9de96128cdc552f75e13a56e2ee6c739  firmachaind
```

</br>

Once you've completed all of the above without any problems, let's restart the chain.

```
> firmachaind start
```
