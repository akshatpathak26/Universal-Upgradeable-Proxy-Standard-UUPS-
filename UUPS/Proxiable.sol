// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;



pragma solidity >=0.7.0 <0.9.0;

contract Proxiable {

// Code position in storage is keccak256(“PROXIABLE”) = “0xc5f16f0fcc639fa48a6947836d9850f504798523bf8c9a3a87d5876cf622bcf7”

function updateCodeAddress(address newAddress) internal {

require(bytes32(0xc5f16f0fcc639fa48a6947836d9850f504798523bf8c9a3a87d5876cf622bcf7) == Proxiable(newAddress).proxiableUUID());

assembly { 
   // storing new address at slot mentioned in line 10

sstore(0xc5f16f0fcc639fa48a6947836d9850f504798523bf8c9a3a87d5876cf622bcf7, newAddress)
    }}

function proxiableUUID() public pure returns (bytes32) {

return 0xc5f16f0fcc639fa48a6947836d9850f504798523bf8c9a3a87d5876cf622bcf7;

    }

}