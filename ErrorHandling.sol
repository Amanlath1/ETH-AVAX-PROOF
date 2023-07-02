// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ErrorRequire {
    function testRequire(uint _i) public pure {
        require(_i > 20, "Input must be greater than 20");
    }
}

contract ErrorRevert{
    function testRevert(uint _i) public pure {
        if(_i <= 10) {
            revert("Input must be greater than 10");
        }
    }
}

contract ErrorAssert{
    function testAssert(uint _num) public pure {
        assert (_num == 0);
    }
}
