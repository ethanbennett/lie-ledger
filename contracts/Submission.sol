pragma solidity ^0.4.0;

contract Submission {
    enum Status { Pending, Approved }
    
    struct Correction {
        address contributor;
        bytes data;
        uint status;
        uint dateSubmitted;
    }
    
    Correction[] contributions;
    event NewContribution;
    
    function create(bytes data) {
        contributions.push(Correction({
            contributor: msg.sender,
            data: msg.data,
            status: 0,
            dateSubmitted: now
        }));
    }
}