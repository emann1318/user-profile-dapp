// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title UserProfile
 * @dev A simple smart contract to manage user profiles with name, age, and balance
 */
contract UserProfile {
    // State variables
    address public owner;
    mapping(address => string) public names;
    mapping(address => uint256) public ages;
    mapping(address => uint256) public balances;
    
    // Events
    event NameUpdated(address indexed user, string newName);
    event AgeUpdated(address indexed user, uint256 newAge);
    event BalanceDeposited(address indexed user, uint256 amount);
    event BalanceWithdrawn(address indexed user, uint256 amount);
    
    // Constructor
    constructor() {
        owner = msg.sender;
    }
    
    // Modifier to check if the caller is the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }
    
    /**
     * @dev Set or update the user's name
     * @param _name The new name for the user
     */
    function setUserProfile(string memory _name, uint256 _age) public {
        names[msg.sender] = _name;
        ages[msg.sender] = _age;
        emit NameUpdated(msg.sender, _name);
        emit AgeUpdated(msg.sender, _age);
    }
    
    /**
     * @dev Get the user's name and age
     * @return The user's name and age
     */
    function getUserProfile(address _user) public view returns (string memory, uint256) {
        return (names[_user], ages[_user]);
    }
    
    /**
     * @dev Deposit balance to the user's account
     */
    function depositBalance() public payable {
        require(msg.value > 0, "Amount must be greater than 0");
        balances[msg.sender] += msg.value;
        emit BalanceDeposited(msg.sender, msg.value);
    }
    
    /**
     * @dev Get the user's balance
     * @param _user The address to check
     * @return The user's balance
     */
    function getBalance(address _user) public view returns (uint256) {
        return balances[_user];
    }
    
    /**
     * @dev Withdraw the user's balance
     * @param _amount The amount to withdraw
     */
    function withdrawBalance(uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
        emit BalanceWithdrawn(msg.sender, _amount);
    }
    
    /**
     * @dev Get contract owner
     * @return The address of the owner
     */
    function getOwner() public view returns (address) {
        return owner;
    }
    
    /**
     * @dev Withdraw all contract balance (only owner)
     */
    function withdrawContractBalance() public onlyOwner {
        require(address(this).balance > 0, "Contract has no balance");
        payable(owner).transfer(address(this).balance);
    }
}

