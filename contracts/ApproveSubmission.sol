pragma solidity ^0.4.0;

contract ApproveSubmission {
    
    function changeStatus (struct Correction) {
        if (msg.sender == address(creator)) {
            Correction(status) = 1;
            payContributor(Correction(contributor), (15.finney))
        }
    }
    
    function payContributor (address contributor, uint amount) {
        contributor.transfer(amount);
    }
}