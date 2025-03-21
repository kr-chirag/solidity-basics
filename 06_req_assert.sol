// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ReqAssert{
    function req(uint256 n) pure  public {
        require(n > 0);
    }
    function asser(uint256 n) external pure {
         assert(n>0);
    }
}