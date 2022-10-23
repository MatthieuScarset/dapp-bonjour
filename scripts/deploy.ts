import { ethers } from "hardhat";

async function main() {
  const Contract = await ethers.getContractFactory("Bonjour");
  const contract = await Contract.deploy("Bonjour bonjour");

  await contract.deployed();

  console.log(`Deployed Bonjour contract at ${contract.address}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
