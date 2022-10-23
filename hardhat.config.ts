import "@nomicfoundation/hardhat-toolbox";
import { HardhatUserConfig } from "hardhat/config";
require('dotenv').config();

const API_KEY = process.env.ALCHEMY_API_KEY;
const MNEMONIC = process.env.MNEMONIC;

const config: HardhatUserConfig = {
  solidity: "0.8.17",
  networks: {
    goerli: {
      url: `https://eth-goerli.g.alchemy.com/v2/${API_KEY}`,
      accounts: { mnemonic: MNEMONIC },
    }
  }
};

export default config;
