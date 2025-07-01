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
