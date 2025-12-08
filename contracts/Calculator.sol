// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 < 0.9.0;

contract Calculator{
  // pure: function doesn't read or modify contract state
  // public: callable from outside (Remix/frontend)
 
 function add(uint256 a, uint256 b) public pure returns(uint256){
 return a + b;
 }

 function substract(uint256 a, uint256 b) public pure returns(uint256){
    require(b <= a, "Underflow: b > a");
    return a - b;
 }

 function multiply(uint256 a, uint256 b) public pure returns(uint256){
  return a * b;
 }

 function divide(uint256 a, uint256 b) public pure returns(uint256){
    require(b != 0, "Division by Zero");
    return a / b;  // Integer division
 }

 function modulus(uint256 a, uint256 b) public pure returns(uint256){
    require(b !=0, "Division by Zero");
    return a % b;
 }



}