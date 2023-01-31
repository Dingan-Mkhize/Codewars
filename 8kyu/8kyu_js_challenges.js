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