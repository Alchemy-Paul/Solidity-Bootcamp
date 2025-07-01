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

 // a contract is a collection of code (functions) and data (state) that resides at a specific address on the Ethereum blockchain.
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;
//the contract named "Book"
contract Book{

  //this is an empty contract
	
}

/* Contracts in Solidity are similar to classes in object-oriented languages, with each contract containing declarations of state variables, functions, and more.In Solidity,
a .sol file, which is the extension for Solidity source code files, could contain one or more contracts.*/
