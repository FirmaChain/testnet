# FirmaChain-DevNet-Imperium


<center>

![132190694-37c673a7-26fa-4bc9-a71c-2a4a4690d458111111](https://user-images.githubusercontent.com/5277080/132265516-b6373d15-133c-41f3-a093-a93c34155c13.png) 



</center>

The FirmaChain Imperium DevNet is a space where chain developers prepare for a variety of scenarios and specifications, providing the fastest way to check for updates to the FirmaChain Core.

The Imperium DevNet consists of 3 validators and 1 light node and is used to test the developing chain module and the basic Cosmos & Tendermint features like validator test and staking, delegation, and voting.

This repository also manages the config file and genesis.json required to set up the chain.

The external validator is not allowed to participate in DevNet, but if you are curious, you can test under the same environment through Genesis.json that we provide.

<br>

The following services are used for the Imperium Devnet:
 - FirmaChain Block Explorer : https://explorer-devnet.firmachain.org/
 - FirmaChain Faucet : https://faucet-devnet.firmachain.org/
 - Cosmos REST: https://imperium-lcd.firmachain.org:1317/
 - Cosmos gRPC: https://imperium-grpc.firmachain.org:9090
 - Tendermint RPC: https://imperium-lcd.firmachain.org:26657/
 - Firma-JS : https://www.npmjs.com/package/@firmachain/firma-js

<br>


## Devnet Status

⚠️ Latest Devnet: [imperium-2](./imperium-2) ⚠️

<br>

## Installation
 * Get latest release (v0.3.2)
```sh
curl https://build.firmachain.org/@v0.3.2 | bash
```

* Check release version
```sh
./firmachaind version
```

## Latest Networks
  - imperium-2  *(Latest)*
  - imperium-1 (retired)


<br>

## Persistent Peers
### imperium-2
```
65db86dfd58c1e3732cfd81bf2129bba222b2cc7@175.114.59.48:26656 // firma-node-1
```

---

## State Sync
If you want to be a validator or full-node, You have to upgrade the chain based on the state below.

|Block | Chain Version|Link|
|--------|-----------|-----------|
|0 - 597,000|[v0.2.3]|[Link](https://github.com/firmachain/firmachain/releases/tag/v0.2.3)|
|597,001 - 704,000|[v0.2.8]|[Link](https://github.com/firmachain/firmachain/releases/tag/v0.2.8)|
|704,001 - 923,000|[v0.2.9]|[Link](https://github.com/firmachain/firmachain/releases/tag/v0.2.9)|
|923,000 - 1,039,200|[v0.3.0]|[Link](https://github.com/firmachain/firmachain/releases/tag/v0.3.0)|
|1,039,201 - 1,402,000|[v0.3.1]|[Link](https://github.com/firmachain/firmachain/releases/tag/v0.3.1)|

---

## History

### *December 07, 2021 21:30:00 (GMT+9)*
- imperium-2 upgraded to v0.3.2

### *November 11, 2021 21:30:00 (GMT+9)*
- imperium-2 upgraded to v0.3.1

### *November 04, 2021 11:00:00 (GMT+9)*
- imperium-2 upgraded to v0.3.0

### *October 21, 2021 11:45:00 (GMT+9)*
- imperium-2 upgraded to v0.2.9

### *October 14, 2021 18:00:00 (GMT+9)*
- imperium-2 upgraded to v0.2.8

### *September 06, 2021 10:19:32 (GMT+9)*
- imperium-2 upgraded to v0.2.3
- imperium-1 retired


