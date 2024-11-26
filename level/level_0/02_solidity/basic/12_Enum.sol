// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Enum {
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Status public st;

    function get() public view returns (Status) {
        return st;
    }

    function set(Status _i) public {
        st = _i;
    }

    function del() public {
        delete st;
    }

    function cancel() public {
        st = Status.Canceled;
    }
}
