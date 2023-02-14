/// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

import "hardhat/console.sol";

interface _PoseidonT3 {
  function poseidon(uint[2] calldata) external pure returns (uint);
}

contract Test {
  function benchmark(address p) public view returns (uint) {
    uint g = gasleft();
    uint r = _PoseidonT3(p).poseidon([uint(2), 1]);
    console.log(g-gasleft());
    return r;
  }
}
