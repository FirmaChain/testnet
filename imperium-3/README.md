# FirmaChain-Testnet-Imperium-3


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
 * Get latest release (v0.3.5)
 * Please see the official document (https://docs.firmachain.org/)
```sh
curl https://build.firmachain.dev/@v0.3.5-alpha4 | bash
```

* Check release version
```sh
./firmachaind version
```

<br>

## Seed Node

```
6ffb2a8cabbcb17cb69b449c54d812b50306786d@testnet-seed1.firmachain.dev:26656
ede8f4b223b10b96ca1b1beda56350f94f400fb0@testnet-seed2.firmachain.dev:26656
```
<br>

## IBC Relayer 
- Hermes 0.14.1+181b14a

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
|0 - 2,505,599|[v0.3.3]|[Link](https://github.com/firmachain/firmachain/releases/tag/v0.3.3)|
|2,505,600 - NOW|[v0.3.5]|[Link](https://github.com/firmachain/firmachain/releases/tag/v0.3.5-alpha4)|



