// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract MyEnnum {
    enum State {
        Pending,
        Done,
        Fail
    }
    State public state;

    function setState(State _state) public {
        state = _state;
    }
}