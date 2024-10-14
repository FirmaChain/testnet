# FirmaChain-Testnet-Imperium-4


<center>

![132190694-37c673a7-26fa-4bc9-a71c-2a4a4690d458111111](https://user-images.githubusercontent.com/5277080/132265516-b6373d15-133c-41f3-a093-a93c34155c13.png) 



</center>

The FirmaChain Imperium Testnet is a space where chain developers prepare for a variety of scenarios and specifications, providing the fastest way to check for updates to the FirmaChain Core.

The Imperium Testnet consists of 3 validators and 1 light node and is used to test the developing chain module and the basic Cosmos & Tendermint features like validator test and staking, delegation, and voting.

This repository also manages the config file and genesis.json required to set up the chain.

The external validator is not allowed to participate in DevNet, but if you are curious, you can test under the same environment through Genesis.json that we provide.

<br>

The following services are used for the testnet:
 - FirmaChain Block Explorer : https://explorer-testnet.firmachain.dev/
 - FirmaChain Faucet : https://faucet-testnet.firmachain.dev/
 - Firma Station : https://station-testnet.firmachain.dev/
 - Cosmos REST: https://lcd-testnet.firmachain.dev:1317
 - Tendermint RPC: https://lcd-testnet.firmachain.dev:26657
 - Firma-JS : https://www.npmjs.com/package/@firmachain/firma-js

<br>

## Installation
 * Get latest release (v0.3.5-beta3)
 * Please see the official document (https://docs.firmachain.org/)
 * From v0.3.5 you need to build `firmachaind` locally
 * Check out details on [official document page](https://docs.firmachain.org/master/node-and-validators-guide/run-a-full-node/installation-firmachaind)


```sh
git clone https://github.com/firmachain/firmachain.git

cd firmachain
git checkout v0.3.5-patch

make install
...
```

After building locally, you will find `firmachaind` executable on the following path

```sh
~/go/bin/firmachaind
```

Check release version

```sh
./firmachaind version
```


Init firmachain testnet using `imperium-4`
```sh
./firmachaind init <moniker-name> --chain-id imperium-4
```

Now you will be able to find config files on the `~/.firmachain/config`

Check out our official document for further setup and node operation.

<br>

## Seed Node

```
ddeaeb19dbe29558ac3f8569f99c0906adf7d8cf@testnet-seed1.firmachain.dev:26656
a195e07dad206431293ab141434331a8373221ab@testnet-seed2.firmachain.dev:26656
```
<br>

## IBC Relayer 
- hermes 1.0.0+ed4dd8c

<br>

## IBC Test Node (chain-id : ibctest-1)
- FirmaChain Block Explorer : https://explorer-ibctest.firmachain.dev/
- Cosmos REST : https://lcd-ibctest.firmachain.dev:1317/
- Tendermint RPC: https://lcd-ibctest.firmachain.dev:26657/
- FirmaChain Faucet : https://faucet-ibctest.firmachain.dev/
- Firma Station : https://station-ibctest.firmachain.dev/

<br>

## State Sync
If you want to be a validator or full-node, You have to upgrade the chain based on the state below.

|Block | Chain Version|Link|
|--------|-----------|-----------|
|0 - 1,849|[v0.3.3]|[Link](https://github.com/firmachain/firmachain/releases/tag/v0.3.3)|
|1,850 - NOW|[v0.3.5]|[Link](https://github.com/FirmaChain/firmachain/releases/tag/v0.3.5-beta3)|
