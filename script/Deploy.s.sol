// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.13;

import {CREATE3Script} from "./base/CREATE3Script.sol";
import {Contract} from "../src/Contract.sol";

contract DeployScript is CREATE3Script {
    constructor() CREATE3Script(vm.envString("VERSION")) {}

    function run() external returns (Contract c) {
        uint256 deployerPrivateKey = uint256(vm.envBytes32("PRIVATE_KEY"));

        uint256 param = 123;

        vm.startBroadcast(deployerPrivateKey);

        c = Contract(
            create3.deploy(
                getCreate3ContractSalt("Contract"), bytes.concat(type(Contract).creationCode, abi.encode(param))
            )
        );

        vm.stopBroadcast();
    }
}
