// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

contract Contract {
    uint256 public immutable param;

    constructor(uint256 param_) {
        param = param_;
    }
}
