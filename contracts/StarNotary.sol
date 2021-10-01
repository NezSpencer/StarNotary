// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract StarNotary {
    string public starName;
    address public starOwner;
    
    event starClaimed(address ownerAddress);
    
    constructor() public {
        starName = "Nnabueze's Star";
    }
    
    function claimStar() public {
        starOwner = msg.sender;
        emit starClaimed(starOwner);
    }

    function changeName(string memory newName) public {
        starName = newName;
    }
    
}