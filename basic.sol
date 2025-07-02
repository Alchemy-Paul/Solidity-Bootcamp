// Day 01

// Here we use the keywords pragma solidity to specify the version of the Solidity compiler to be used to compile the code.

pragma solidity ^0.8.4;

// pragma doesn’t change the compiler version, it just requires the compiler to check if the version matches.
/* the latest version of ERC20, a compiler version of no less than 0.8.20 is used. 
This way, only compilers with a version greater than or equal to 0.8.20 but less than 0.9.0 can compile this ERC20 contract.
This helps to avoid potential compatibility issues between the code and compiler versions */

pragma solidity ^0.8.20;
abstract contract ERC20 is Context, IERC20, IERC20Metadata, IERC20Errors { }

// We use ^0.a.b to indicate code in the current file needs solidity ≥0.a.b and <0.(a+1).0.
// Here it says we need version >=0.7.5, but <0.8.0
pragma solidity ^0.7.5;

//<h2>CONTRACT</h2>
 // a contract is a collection of code (functions) and data (state) that resides at a specific address on the Ethereum blockchain.
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;
//the contract named "Book"
contract Book{

  //this is an empty contract
	
}

/* Contracts in Solidity are similar to classes in object-oriented languages, with each contract containing declarations of state variables, functions, and more.In Solidity,
a .sol file, which is the extension for Solidity source code files, could contain one or more contracts.*/

//<h2>VARIABLES</h2>
//Variables are like containers that store information within a program (a smart contract here).
//In Solidity, variables are used to store and manage data within smart contracts.
/*What properties does a variable have?
Every variable has a type, as a shoe container could only hold shoes, you cannot assign a true or false value to an int type variable, which should hold integers.Overall, a variable also has：
● Variable name: this is the name we give to a container: a
● Variable value: is the actual information we put inside the container: 10
● Variable type: every variable has a type, for example: integer. */

pragma solidity ^0.8.7;
contract Book {

  //This is a variable of type integer 
  int basic_price = 10;

}

// there are signed Interger called int while unsigned integer are called uint
// int could be both positive and negative, while uint could only be positive.
//int could be negative, like -3
int a = -3;

//uint could only be positive
uint b = 10; // this is ok
uint c = 3 - 5; // this will report errors

/* Why do we use unsigned integers?
Well, this is because if we want to store the same positive number, uint could need smaller memory as it doesn’t need to store the symbol.
Since we don’t need to store the symbol of the integer (- or +) then we could have more space to store the actual number.
What are the common operations of integers?
+= and -=Two commonly used operations for updating an integer are += and -=a += b is the same as a = a + b we retrieve the value of a,
add b to it, and assign the value back to a. */
int a = 3;
//this is the same as a = a + 3
//We retrieve the value of a
//add 3 to it
//and assign it back to a 
a += 3; //a is 6 now 

// Day 02

// A bit is a unit. It represents a single digit in binary representation: 0 or 1. And uint can specify how many bits it stores, like this: uint128.
/* In UniswapV2, developers split uint224 into uint112 x uint112 to achieve decimal representation in Solidity.
The first 112 bits are used to represent the integer part, while the subsequent 112 bits are used for the decimal part. */

uint224 constant Q112 = 2**112;
uint8 a;
int256 b;
int128 c;
uint127 d; //This is NOT valid because 127 is not a multiplier of 8.

/* You can’t use bit in Solidity directly, as it’s used to specify the number of bits an integer could use.
We add bits after uint or int.However, it’s worth noting that the number of bits needs to be a multiplier of 8 
uint and int
uint and int are the acronym of uint256 and int256, which are the biggest integers we could have.

*/
uint a;//this is the same as uint256 a;
int b;

//Boolean
/* Boolean otherwise known as bool is a type of variable whose value could only either be true or false.
What are the operations on booleans?
// ● Negation
We have some operations on bool. Just like you could do plus and minus for numbers; for bool, we could do negation ! - which flips the value from 0 to 1 and from 1 to 0. */
bool c = !a; // c is false here, we flipped the value of a and assigned it to c
bool d = !c; // d is true here  
// ● And
// && will return a value of true if both variables are true
bool e = d && a;// e will be true because both d and a are true 
bool f = e && b;// f will not be true because b is not true
bool g = e && true; // g will be true 
// ● Or
// Since we have the && operation, then we have or || too, which will return true if at least one of the two variables is true.
bool h = true || false; // h is true
// ● Equality
// Another operation that will be used commonly is == which will return true if two values are the same, false otherwise.
bool i = a == true; // i is true because a is true 
// ● Inequality
//Finally, we also need inequality != which returns true if two values are not the same, false otherwise.
bool j = a != true; // j is false because a is true

// example
pragma solidity ^0.8.7;
contract Book{

	bool a = true;
	bool b = false;
	bool c = !a; 
	bool d = !c;
	bool e = d && a;
	bool f = e && b;
	bool g = e && true;
	bool h = true || false;
	bool i = a == true;
	bool j = a != true;
}

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
