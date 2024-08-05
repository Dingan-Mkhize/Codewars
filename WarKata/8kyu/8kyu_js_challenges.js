/* 
Price of Mangoes

There's a "3 for 2" (or "2+1" if you like) offer on mangoes. For a given quantity and price (per mango), calculate the total cost of the mangoes.

mango(2, 3) ==> 6    # 2 mangoes for $3 per unit = $6; no mango for free
mango(3, 3) ==> 6    # 2 mangoes for $3 per unit = $6; +1 mango for free
mango(5, 3) ==> 12   # 4 mangoes for $3 per unit = $12; +1 mango for free
mango(9, 5) ==> 30   # 6 mangoes for $5 per unit = $30; +3 mangoes for free

My solution:

function mango(quantity, price){
  let qty = quantity - Math.floor(quantity / 3);
  return qty * price;
}

Best solution:

function mango(quantity, price){
  return price * (quantity - Math.floor(quantity / 3));
}
*/

/*
Unfinished Loop - Bug Fixing #1

Oh no, Timmy's created an infinite loop! Help Timmy find and fix the bug in his unfinished for loop!

My solution:

function createArray(number){
  var newArray = [];
  
  for(var i = 1; i <= number; i++){
    newArray.push(i);
  }
  
  return newArray;
}
*/

/*
Third Angle of a Tringle

You are given two interior angles (in degrees) of a triangle. Write a function to return the 3rd. Note: only positive integers will be tested.

My solution:

function otherAngle(a, b) {
  return 180 - a - b;
}

Other solution:

function otherAngle(a, b) {
  return 180-(a+b);
}
*/

// My solution:

// Given a string s, write a method (function) that will return true if its a valid single integer or floating number or false if its not.

// Valid examples, should return true:

// isDigit("3")
// isDigit("  3  ")
// isDigit("-3.23")

// should return false:

// isDigit("3-4")
// isDigit("  3   5")
// isDigit("3 5")
// isDigit("zero")



// function isDigit(s) {
//   // Use a regular expression to check if the string is a valid integer or floating number
//   return /^\s*-?\d+(\.\d+)?\s*$/.test(s);
// }

// // Test cases
// console.log(isDigit("3"));        // true
// console.log(isDigit("  3  "));     // true
// console.log(isDigit("-3.23"));     // true

// console.log(isDigit("3-4"));       // false
// console.log(isDigit("  3   5"));   // false
// console.log(isDigit("3 5"));       // false
// console.log(isDigit("zero"));      // false

// Now, let's break down the regular expression ^\s*-?\d+(\.\d+)?\s*$:

//     ^: Asserts the start of the string.
//     \s*: Matches zero or more whitespace characters.
//     *-?: Allows an optional negative sign.
//     \d+: Matches one or more digits.
//     (\.\d+)?: Allows an optional decimal part with one or more digits.
//     \s*$: Matches zero or more whitespace characters until the end of the string ($).

// So, the regular expression ensures that the string is either a valid integer or a valid floating-point number, with optional leading and trailing whitespaces.

// Better solution:

// function isDigit(s) {
//  return s==parseFloat(s);
// }

// Be Concise IV - Index of an element in an array

// Provided is a function Kata which accepts two parameters in the following order: array, element and returns the index of the element if found and "Not found" otherwise. Your task is to shorten the code as much as possible in order to meet the strict character count requirements of the Kata. (no more than 161) You may assume that all array elements are unique.

// My solution:

// def find(a,e):
//  try:return a.index(e)
//  except:return'Not found'

//  We've renamed the parameters to a (for array) and e (for element) to save space.
//  We use Python's built-in index() method, which returns the index of the first occurrence of an element in a list.
//  We wrap this in a try-except block:
 
//  If e is found in a, a.index(e) returns its index.
//  If e is not in a, a.index(e) raises a ValueError, which is caught by the except clause.
 
 
//  In the except clause, we return the string 'Not found'.
 
//  This solution is more concise and efficient than the original because:
 
//  It leverages Python's built-in index() method, which is implemented in C and is faster than a manual loop.
//  It uses Python's exception handling to deal with the "not found" case, eliminating the need for an explicit loop.
//  It removes all unnecessary whitespace and uses minimal variable names to meet the character count requirement. 

// Find the Missing Number

// The following was a question that I received during a technical interview for an entry level software developer position. I thought I'd post it here so that everyone could give it a go:

// You are given an unsorted array containing all the integers from 0 to 100 inclusively. However, one number is missing. Write a function to find and return this number. What are the time and space complexities of your solution?

// My solution:

// def missing_no(nums):
//     expected_sum = 5050  # Sum of numbers from 0 to 100
//     actual_sum = sum(nums)
//     return expected_sum - actual_sum


// The following was a question that I received during a technical interview for an entry level software developer position. I thought I'd post it here so that everyone could give it a go:

// You are given an unsorted array containing all the integers from 0 to 100 inclusively. However, one number is missing. Write a function to find and return this number. What are the time and space complexities of your solution?

// My solution:

// def missing_no(nums):
//     expected_sum = 5050  # Sum of numbers from 0 to 100
//     actual_sum = sum(nums)
//     return expected_sum - actual_sum