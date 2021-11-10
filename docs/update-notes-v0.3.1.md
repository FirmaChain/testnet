# FirmaChain v0.3.1 Upgrade Notes

This document was created to transparently share the testnet upgrade process.

## Overview

- Governance Proposal: https://explorer-devnet.firmachain.org/proposals/18
- Target Block Height : `1,039,200`
- Upgrade Type: Soft-fork by governance software upgrade proposal

</br>

| |Before|After|
|--------|-----------|-----------|
|FirmaChain|[v0.3.0](https://github.com/firmachain/firmachain/releases/tag/v0.3.0)|[v0.3.1](https://github.com/firmachain/firmachain/releases/tag/v0.3.1)|
|Cosmos SDK|[v0.44.3](https://github.com/cosmos/cosmos-sdk/releases/tag/v0.44.3)|[v0.44.3](https://github.com/cosmos/cosmos-sdk/releases/tag/v0.44.3)|
|Tendermint|[v0.34.14](https://github.com/tendermint/tendermint/releases/tag/v0.34.14)|[v0.34.14](https://github.com/tendermint/tendermint/releases/tag/v0.34.14)|


</br>

## Main Changes

- Support Burn Module

</br>

## Installation Process

 The `firmachaind` process will automatically be stopped at block height `1,039,200`. But the process will still remain in alive state. So you have to manually kill `firmachaind` process.

```bash
> pkill firmachaind
```

</br>

We recommend you backup existing block chain data as follows or in whatever way you see fit. 
```bash
> cp -r .firmachain .firmachain_v030
> tar -cvf firmachain_v030.tar .firmachain
```

</br>

Now you're ready to install the new binary.

```bash
> curl https://build.firmachain.org/@v0.3.1 | bash
> sudo mv ./firmachaind /usr/local/bin/firmachaind

> firmachaind version
0.3.1

> firmachaind version --long
name: Firmachain
server_name: firmachaind
version: 0.3.1
commit: 987f4c165213aa7e928683b1c7128834dc12e460
build_tags: ""
go: go version go1.16.8 linux/amd64
...
cosmos_sdk_version: v0.44.3

> sha1sum firmachaind
ed0faa6537bf7ecf63febe334abf980ca199307e  firmachaind
```

</br>

Once you've completed all of the above without any problems, let's restart the chain.

```
> firmachaind start
```
