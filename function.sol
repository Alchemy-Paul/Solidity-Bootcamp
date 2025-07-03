//a function is a reusable piece of code that represents a specific action or computation within a smart contract
/* Functions are defined with
1. a specific name
2. a list of parameters they take
3. [optionally] what they return.
4. different visibility specifiers like public, private, internal, or external, which dictate how the function can be called.
5. [optionally] view if they don't modify the state or pure if they neither read nor write the state.
6. [optionally] specific security modifiers */
//What is a function header?
// As a black box, we need to define how it can be used, which means its name, inputs, and outputs. This is done by one line of code, we formally call it function header.

//example
// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.4;
contract Function {
  //Here we define a function called add, which takes two int, a and b
  //and outputs another int.
  //public is indicating that everyone could access this function
  //we will discuss more about public in lesson Scope
  function add(int a, int b) public returns(int){
    return a + b;
  }
}
