import { loadFixture } from "@nomicfoundation/hardhat-network-helpers";
import { expect } from "chai";
import { ethers } from "hardhat";

describe("Bonjour", function () {
  // Fixture.
  async function deployContract() {
    const defaultMessage = "Bonjour";

    // Contracts are deployed using the first signer/account by default
    const [owner, otherAccount] = await ethers.getSigners();

    const Contract = await ethers.getContractFactory("Bonjour");
    const contract = await Contract.deploy(defaultMessage);

    return { contract, defaultMessage, owner, otherAccount };
  }

  describe("Deployment", function () {
    it("Should set the right owner", async function () {
      const { contract, owner } = await loadFixture(deployContract);

      expect(await contract.owner()).to.equal(owner.address);
    });

    it("Should set the right message", async function () {
      const { contract, defaultMessage, owner } = await loadFixture(deployContract);
      const address = await owner.getAddress();
      const message = await contract.getBonjour(address);
      expect(message).to.equal(defaultMessage);
    });
  });

  describe("Methods", function () {
    it("Should set a new message", async function() {
      const newMessage = "Salut";
      const { contract, owner } = await loadFixture(deployContract);
      await contract.setBonjour(newMessage);
      const _string = await contract.getBonjour(owner.getAddress());

      expect(_string).to.equal(newMessage);
    });
  });

});
