# SaxoniaCoin

SaxoniaCoin is an ERC-20 token smart contract for the [Ethereum](https://ethereum.org/) platform.

## Requirements

### Truffle

This project uses [Truffle](http://truffleframework.com/) to compile, test and deploy the contracts.

Install Truffle via npm: `npm i -g truffle`

### Ganache

In order to test and deploy the contracts to a dev chain we use ganache-cli.

Install ganache-cli via npm: `npm i -g ganache-cli`

### Geth

Once we tested successfully on Ganache, we want to deploy the contracts to Testnet and Mainnet. 
We use [Geth](https://github.com/ethereum/go-ethereum/wiki/geth) to connect to these chains.

Read the [instructions](https://github.com/ethereum/go-ethereum/wiki/Building-Ethereum) on how to install Geth on your
system.

## Compile contracts

Run `truffle compile` to compile SaxoniaCoin and its dependencies. The compiled contracts will be generated into 
build/contracts folder.

## Deploy and test contracts on a dev chain

Run `ganache-cli --port 8544` to lauch a dev chain.

Run `truffle migrate` to deploy SaxoniaCoin to the dev chain.

Run `truffle test` to deploy and test SaxoniaCoin on the dev chain. 

## Deploy contracts to Ropsten testnet

First, run
```bash
geth --testnet --fast --rpc --rpcapi eth,net,web3,personal,db --port 0 --cache 1024
```
to sync the Ropsten testnet to your local system.

*TODO* Create an account on the testnet and send it some Ether so that it has enough gas to deploy to the testnet. 

Then, run `truffle migrate` to deploy SaxoniaCoin to the testnet.
