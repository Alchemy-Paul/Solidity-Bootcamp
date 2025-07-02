// Address
// An address is an identifier for an account or a smart contract on the Ethereum blockchain.It’s a number in hexadecimal.
// An address could be one of these two things: account address or contract address.Account addressIt’s created to receive or send money by a user, a.k.a. a user-controlled address. 

/* This is also referred to as a wallet. Check out Metamask if you’re not familiar with this concept.
Contract addressIn contrast with account address, contract address is controlled by a contract (program). 
When you put your contract on Ethereum, you put it to an address on Ethereum. And this identifier is how people interact with you.*/

//0x means the following number is in hexadecimal 
address address1 = 0x35701d003AF0e05D539c6c71bF9421728426b8A0;
//In the ERC20 transfer function, the address data type is used to represent recipient addresses.
function transfer(address to, uint256 value) public virtual returns (bool) {
    address owner = _msgSender();
    _transfer(owner, to, value);
    return true;
}
// Also when you register your wallet, you’re assigned a unique account address.

// An address could be one of these two things: account address or contract address.Account addressIt’s created to receive or send money by a user, a.k.a. a user-controlled address. 
This is also referred to as a wallet. Check out Metamask if you’re not familiar with this concept. Contract addressIn contrast with account address, contract address is controlled by a contract (program). 
When you put your contract on Ethereum, you put it to an address on Ethereum. And this identifier is how people interact with you.

//example
// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

contract AddressArray {
  address payable add = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
  address b = add;
  uint balance = b.balance;
}

// What is address.balance and address.transfer?
//These two are the built in functions of address. Built in function means Solidity created these functions for all variables in this type and you can use it directly.Balancebalance allows contracts to check how much balance is left in one address .
// Balance is in uint because it can never be negative 
uint balance = address1.balance;
//Transfertransfer allows contracts to transfer money from itself to another address, where the amount transferred is in unit Wei, 1 Eth = 10^18 Wei .
// transfer 5 Wei from this contract to address1 
address1.transfer(5);
// Address Payable
// The address payable type in Solidity is used to represent Ethereum addresses that you want to send Ether to.

In the OpenZeppelin's ERC2771Forwarder contract, the parameter refundReceiver is defined as payable, which also means that we could send Ether to this refundReceiver address in this ERC2771Forwarder contract.
function executeBatch(
    ForwardRequestData[] calldata requests,
    address payable refundReceiver
) public payable virtual {
    ...
}

address payable add = payable(address(0x123));
//To define an address payable variable, we use the keyword address payable.

/* When should we define address payable?
If we want to transfer money Ether our account to this account, then we should mark it address payable.
How to convert an address from a regular address to a payable address?
To convert from address payable to address, we don’t need to do anything — we can just use address payable variables as address type variables, this is called implicit conversion.However, to convert from address to address payable, we need explicit conversion, using the keyword payable.*/

address payable add = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
address b = add; //implicit converting from address payable to address
address payable d = payable(b); // explicit conversion with payable()
/* How to transfer Ether to a payable address?
transfer allows contracts to transfer money from itself to another address, where the amount transferred is in unit Wei, 1 Eth = 10^18 WeiIn Solidity, the transfer method allows smart contracts to send Ether from their own account to another address. This transfer is specified in terms of "Wei", the smallest denomination of Ether, where 1 Ether equals 1,000,000,000,000,000,000 Wei (10^18 Wei).Example: Suppose you want to transfer 5 Wei from the current contract to an address transfer1. You would use the code address1.transfer(5); to execute this transfer. This command deducts the specified amount from the contract's balance and sends it to transfer1.*/
//transfer 5 Wei from this contract to address1 
address1.transfer(5);

//Example
// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

contract AddressArray {
  address payable add = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
  address b = add;
  uint balance = b.balance;
	//We will make the function payable so we could send Ether
	//to this function and this function call transfer to send
	//Ether to the address
  function trans() public payable {
    //this transfers 10 Wei to address b from the current contract 
    add.transfer(10);
  }
}
