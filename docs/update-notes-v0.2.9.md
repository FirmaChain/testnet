# FirmaChain v0.2.9 Upgrade Notes

This document was created to transparently share the testnet upgrade process.

## Overview

- Governance Proposal: https://explorer-devnet.firmachain.org/proposals/13
- Target Block Height : `704,000`.
- Upgrade Type: Soft-fork by governance software upgrade proposal

</br>

| |Before|After|
|--------|-----------|-----------|
|FirmaChain|[v0.2.8](https://github.com/firmachain/firmachain/releases/tag/v0.2.8)|[v0.2.9](https://github.com/firmachain/firmachain/releases/tag/v0.2.9)|
|Cosmos SDK|[v0.44.1](https://github.com/cosmos/cosmos-sdk/releases/tag/v0.44.1)|[v0.44.2](https://github.com/cosmos/cosmos-sdk/releases/tag/v0.44.2)|
|Tendermint|[v0.34.13](https://github.com/tendermint/tendermint/releases/tag/v0.34.13)|[v0.34.13](https://github.com/tendermint/tendermint/releases/tag/v0.34.13)|


</br>

## Main Changes

- Support Cosmos SDK 0.44.2
    - Recently, the Cosmos-SDK team became aware of a high-severity security vulnerability that impacts Cosmos-SDK v0.43.x and v0.44.x and can result in a consensus halt. User funds are NOT at risk; however, the vulnerability can result in a chain halt. This vulnerability does not impact the current Cosmos Hub, though other Cosmos-SDK based blockchains using v0.43.x or v0.44.x may be affected and are advised to update to v0.44.2 immediately.


</br>

## Installation Process

 The `firmachaind` process will automatically be stopped at block height `704,000`. But the process will still remain in alive state. So you have to manually kill `firmachaind` process.

```bash
> pkill firmachaind
```

</br>

We recommend you backup existing block chain data as follows or in whatever way you see fit. 
```bash
> cp -r .firmachain .firmachain_v028
> tar -cvf firmachain_v028.tar .firmachain
```

</br>

Now you're ready to install the new binary.

```bash
> curl https://build.firmachain.org/@v0.2.9 | bash
> sudo mv ./firmachaind /usr/local/bin/firmachaind

> firmachaind version
0.2.9-96864823

> firmachaind version --long
name: Firmachain
server_name: firmachaind
version: 0.2.9-96864823
commit: 96864823fc117b14247615af25ccd477494abee4
build_tags: ""
go: go version go1.16.8 linux/amd64
...
cosmos_sdk_version: v0.44.2
```

</br>

Once you've completed all of the above without any problems, let's restart the chain.

```
> firmachaind start
```
