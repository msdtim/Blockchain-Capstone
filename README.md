# Real Estate Marketplace

This is the capstone project of the Udacity Blockchain Developer Nanodegree Program. I am using the knowledge gained in the course in order to build a decentralized housing product. 

Contract Address:
[0x0Db1ba13BB611FD80D64ef369b48164087010DBA](https://rinkeby.etherscan.io/address/0x0Db1ba13BB611FD80D64ef369b48164087010DBA)

OpenSea Storefront: https://rinkeby.opensea.io/assets/real-estate-token-v8

Contract ABI can be found in: `./eth-contracts/build/contracts/*.json`

## Goal

The goal of this project to create a decentralized house listing service. The real estate properties are represented by ERC721 tokens. We are using the zk-SNARKs toolbox from ZoKrates to establish a verification mechanism before minting each tokens. Finally, the tokens are listed and able for exchange on the blockchain market place OpenSea.

## Steps
### Installation

- `git clone` this repository
- `npm install`

### Tests

- `truffle test` to run the tests suite

### Deploy Contracts
You need to setup the `truffle-config.js`, with your wallet and infura account before deploy to the rinkeby network

- `truffle compile` to compile contracts
- `truffle migrate --reset --network rinkeby` to deploy to rinkeby network

### Mint Tokens
Ideally, a web client should be provided to allow user to interact with the contract and list their properties, but it is out of scoop of this project. Instead, I used the MyEtherWallet to interacting with smart contracts to mint tokens

You can follow this [tutorial](https://www.youtube.com/watch?v=8MChn-NJJB0)


## Built With

* [Ethereum](https://www.ethereum.org/) - Ethereum is a decentralized platform that runs smart contracts
* [Truffle Framework](http://truffleframework.com/) - Truffle is the most popular development framework for Ethereum with a mission to make your life a whole lot easier.
* [ZoKrates](https://github.com/Zokrates/ZoKrates) - Implement zkSnarks using ZoKrates, a toolbox for zkSNARKs on Ethereum.
* [Docker](https://docs.docker.com/install/) - Docker is the recommended way to get started with Zokrates. Docker is a tool designed to make it easier to create, deploy, and run applications by using containers.
* [OpenSea](https://docs.opensea.io/docs) - OpenSea is a decentralized marketplace that is used for selling for crypto assets
* [Infura](https://infura.io/) - Scalable Blockchain Infrastructure
* [Metamask](https://metamask.io/) - MetaMask is a bridge that allows to visit the distributed web in browser.

## Project Resources

* [Remix - Solidity IDE](https://remix.ethereum.org/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Truffle Framework](https://truffleframework.com/)
* [Ganache - One Click Blockchain](https://truffleframework.com/ganache)
* [Open Zeppelin ](https://openzeppelin.org/)
* [Interactive zero knowledge 3-colorability demonstration](http://web.mit.edu/~ezyang/Public/graph/svg.html)
* [Docker](https://docs.docker.com/install/)
* [ZoKrates](https://github.com/Zokrates/ZoKrates)
