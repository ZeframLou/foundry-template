// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "forge-std/Test.sol";

contract ContractTest is Test {
    function setUp() public {}

    function testExample() public {
        vm.startPrank(address(0xB0B));
        console2.log("Hello world!");
        assertTrue(true);
    }
}
