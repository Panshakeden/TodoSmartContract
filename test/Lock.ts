import {
  time,
  loadFixture,
} from "@nomicfoundation/hardhat-toolbox/network-helpers";
import { anyValue } from "@nomicfoundation/hardhat-chai-matchers/withArgs";
import { expect,assert } from "chai";
import { ethers } from "hardhat";
import { todo } from "node:test";
// import { assert } from "console";

describe("To do test", function () {
 
  async function deployTodo() {
   
    // Contracts are deployed using the first signer/account by default
    const [owner, otherAccount] = await ethers.getSigners();

    const Todo= await ethers.getContractFactory("Todo");
    const todo = await Todo.deploy();

    return {todo};
  }

  describe("setting and reading from state", function () {

    it("It should check Todo exists", async function () {
      const {todo} = await loadFixture(deployTodo);
      assert.isNotNull(todo);
    });

 

    });
  });