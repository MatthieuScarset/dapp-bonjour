# Bonjour

This project demonstrates a basic dapp built on top of Solidity + Hardhat (TypeScript).

It comes with a simple contract, tests for that contract, and a script that deploys that contract.

Contract on [GOERLI](https://goerli.etherscan.io/address/0x990b00176b4226e8077034fe3105a8c87d7dadfa#code)

## Development

Try running some of the following tasks:

```shell
npx hardhat compile
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.ts
```

Want to deploy on a living blockchain? 

Create your `.env` file and replace `ALCHEMI_API_KEY` and `MNEMONIC`.

```shell
cp example.env
# enter your credentials
```

Now, you can deploy to GOERLI testnet:

```shell
npx hardhat run --network goerli scripts/deploy.ts
```
