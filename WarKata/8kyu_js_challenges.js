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

Is it a number?

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