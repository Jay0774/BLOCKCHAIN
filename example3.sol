// owner rights assign contract
/*
 functions:-
 constructor()
 active()
 isactive()
 addperson()
 incrementCount()
*/
pragma solidity ^0.5.13;

contract OwnerRights{
    
    // enum => numbers => 0,1,2..etc.
    enum State{
        waiting, // 0
        ready,  // 1
        active // 2
    }
    State public state; // access enum publically
    
    address owner; // represents owner address
    
    // modifier to check that msg sender is owner
    // msg is global object having may methods
    modifier onlyOwner(){
        require(msg.sender==owner);
        _; //ending of owner
    }
    
    // structure of person defination
    struct Person{
        string fname;
        string lname;
    }
    
    // array of type person and access using people
    Person[] public people;
    
    // count the no. of people
    uint public peopleCount;
    
    // constructor
    constructor() public{
        state=State.waiting;
        owner=msg.sender;
    }
    
    // change state to active
    function active() public{
        state=State.active;
    }
    
    // check whether the state is active or not
    function isactive() public view returns(bool){
        return state == State.active;
    }
    
    // add a new person
    function addPerson(string memory _fn,string memory _ln) public onlyOwner
    {
        people.push(Person(_fn,_ln));
        incrementCount();
    }
    
    // increment the count by 1 for adding a new person
    function incrementCount() internal{
        peopleCount++;
    }
}
