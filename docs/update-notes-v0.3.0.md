# FirmaChain v0.3.0 Upgrade Notes

This document was created to transparently share the testnet upgrade process.

## Overview

- Governance Proposal: https://explorer-devnet.firmachain.org/proposals/16
- Target Block Height : `923,000`.
- Upgrade Type: Soft-fork by governance software upgrade proposal

</br>

| |Before|After|
|--------|-----------|-----------|
|FirmaChain|[v0.2.9](https://github.com/firmachain/firmachain/releases/tag/v0.2.9)|[v0.3.0](https://github.com/firmachain/firmachain/releases/tag/v0.3.0)|
|Cosmos SDK|[v0.44.2](https://github.com/cosmos/cosmos-sdk/releases/tag/v0.44.2)|[v0.44.3](https://github.com/cosmos/cosmos-sdk/releases/tag/v0.44.3)|
|Tendermint|[v0.34.13](https://github.com/tendermint/tendermint/releases/tag/v0.34.13)|[v0.34.14](https://github.com/tendermint/tendermint/releases/tag/v0.34.14)|


</br>

## Main Changes

- Support Token Module (like ERC-20)
- Support Cosmos SDK 0.44.3
  - bumps Tendermint to v0.34.14.
  - bumps the gin-gonic/gin version to 1.7.0 to fix the upstream security vulnerability.
  - adds a null guard with a user-friendly error message for possible nil Amount in tx fee Coins.


</br>

## Installation Process

 The `firmachaind` process will automatically be stopped at block height `923,000`. But the process will still remain in alive state. So you have to manually kill `firmachaind` process.

```bash
> pkill firmachaind
```

</br>

We recommend you backup existing block chain data as follows or in whatever way you see fit. 
```bash
> cp -r .firmachain .firmachain_v029
> tar -cvf firmachain_v029.tar .firmachain
```

</br>

Now you're ready to install the new binary.

```bash
> curl https://build.firmachain.org/@v0.3.0 | bash
> sudo mv ./firmachaind /usr/local/bin/firmachaind

> firmachaind version
0.3.0

> firmachaind version --long
name: Firmachain
server_name: firmachaind
version: 0.3.0
commit: 6c15c36f4d6a49500d5da9c8a641e61ba61564cc
build_tags: ""
go: go version go1.16.8 linux/amd64
...
cosmos_sdk_version: v0.44.3

> sha1sum firmachaind
6766f6bb8969879b034d4f2e509b8619ec751b87  firmachaind
```

</br>

Once you've completed all of the above without any problems, let's restart the chain.

```
> firmachaind start
```
