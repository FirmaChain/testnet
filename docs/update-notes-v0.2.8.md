# FirmaChain v0.2.8 Upgrade Notes

This document was created to transparently share the testnet upgrade process.

## Overview

- Governance Proposal: https://explorer-devnet.firmachain.org/proposals/12
- Target Block Height : `597,000`
- Upgrade Type: Soft-fork by governance software upgrade proposal

</br>

| |Before|After|
|--------|-----------|-----------|
|FirmaChain|[v0.2.3](https://github.com/firmachain/firmachain/releases/tag/v0.2.3)|[v0.2.8](https://github.com/firmachain/firmachain/releases/tag/v0.2.8)|
|Cosmos SDK|[v0.42.6](https://github.com/cosmos/cosmos-sdk/releases/tag/v0.42.6)|[v0.44.1](https://github.com/cosmos/cosmos-sdk/releases/tag/v0.42.9)|
|Tendermint|[v0.34.11](https://github.com/tendermint/tendermint/releases/tag/v0.34.11)|[v0.34.13](https://github.com/tendermint/tendermint/releases/tag/v0.34.13)|


</br>

## Main Changes

- Support Cosmos SDK 0.44.1 and Starport 0.18.x
- Support authz and feegrant module
- Apply in-place store migrations feature

</br>

## Installation Process

 The `firma` process will automatically be stopped at block height `597,000`. But the process will still remain in alive state. So you have to manually kill `firma` process.

```bash
> pkill firma
```

</br>

We recommend you backup existing block chain data as follows or in whatever way you see fit. 
```bash
> cp -r .firmachain .firmachain_v023
> tar -cvf firmachain_v023.tar .firmachain
```

</br>

Now you're ready to install the new binary.

```bash
> curl https://build.firmachain.org/@v0.2.8 | bash
> sudo mv ./firmachaind /usr/local/bin/firmachaind

> firmachaind version
0.2.8

> firmachaind version --long
name: Firmachain
server_name: firmachaind
version: 0.2.8
commit: 8183aca9e7bb56f77bb86e4029d03766893c3158
build_tags: ""
go: go version go1.16.8 linux/amd64
...
cosmos_sdk_version: v0.44.1
```

</br>

Once you've completed all of the above without any problems, let's restart the chain.

```
> firmachaind start
```
