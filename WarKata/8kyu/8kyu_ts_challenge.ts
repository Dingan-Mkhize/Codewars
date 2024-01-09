// Safen User Input Part I - htmlspecialchars

// You are a(n) novice/average/experienced/professional/world-famous Web Developer (choose one) who owns a(n) simple/clean/slick/beautiful/complicated/professional/business website (choose one or more) which contains form fields so visitors can send emails or leave a comment on your website with ease. However, with ease comes danger. Every now and then, a hacker visits your website and attempts to compromise it through the use of XSS (Cross Site Scripting). This is done by injecting script tags into the website through form fields which may contain malicious code (e.g. a redirection to a malicious website that steals personal information).
// Mission

// Your mission is to implement a function that converts the following potentially harmful characters:

//     < --> &lt;
//     > --> &gt;
//     " --> &quot;
//     & --> &amp;

// Good luck :D

// My solution:

// export function htmlspecialchars(formData: string): string {
//   // Insert your code here
//   return formData.replace(/&/g, "&amp;")
//                 .replace(/</g, "&lt;")
//                 .replace(/>/g, "&gt;")
//                 .replace(/"/g, "&quot;");
// }

// Alternate solution:

// export function htmlspecialchars(formData: string): string {
//   return formData.replace(/[\<\>\"\&]/g, a => ({
//     "<":"&lt;", 
//     ">": "&gt;", 
//     '"': "&quot;", 
//     "&":"&amp;",
//   }[a]))
// }

// Function Signature:

// The function htmlspecialchars takes a single parameter input of type string.
// It returns a string which is the sanitized version of the input.
// String Replacement:

// input.replace(/&/g, "&amp;"): This line searches for all instances of the & character and replaces them with &amp;. It's important to do this first, so we don't accidentally replace an ampersand that's part of an already escaped character.
// .replace(/</g, "&lt;"): This replaces all < characters with &lt;.
// .replace(/>/g, "&gt;"): This replaces all > characters with &gt;.
// .replace(/"/g, "&quot;"): This replaces all " characters with &quot;.
// Regular Expressions:

// The function uses regular expressions (like /&/g) to find all occurrences of specific characters. The g flag in the regular expression indicates a global search, meaning it doesn't stop at the first match but continues to replace all matches in the string.
// Order of Replacement:

// The order in which you replace these characters is significant. Always replace & first to avoid double-escaping characters that may follow an ampersand.
// Example Usage:

// The example demonstrates how to use the function with a string that might be used in an XSS attack. The htmlspecialchars function converts it into a safe string by replacing the harmful characters with their HTML entities.
// By using this function, you can mitigate the risk of XSS attacks by sanitizing user input before rendering it on your web page. This is a crucial step in securing any application that accepts and displays user input.

// Convert number to reversed array of digits

// Given a random non-negative number, you have to return the digits of this number within an array in reverse order.
// Example(Input => Output):

// 35231 => [1,3,2,5,3]
// 0 => [0]

// My solution: 

// export const digitize = (n: number): number[] => {
//   // Step 1: Convert the number to a string
//     let str = n.toString();

//     // Step 2: Split the string into an array of characters
//     let digits = str.split('');

//     // Step 3: Reverse the array
//     let reversedDigits = digits.reverse();

//     // Step 4: Convert each element back to a number
//     let result = reversedDigits.map(digit => parseInt(digit));

//     return result;
// };

// Convert the Number to a String: Since we want to work with individual digits, it's easier to first convert the number to a string.
// Split the String into an Array: Split the string into an array of its characters (which are the digits).
// Reverse the Array: Reverse the array to get the digits in the reverse order.
// Convert Each Element Back to a Number: Map each character back to its numeric form.

// Better solution: 

// export const digitize = (n: number): number[] => {
//   return [...n.toString()].map(Number).reverse();
// };

// n.toString(): This converts the number n into a string. For example, if n is 35231, it becomes "35231".

// [...n.toString()]: This syntax uses the spread operator (...) to spread the string into an array of its individual characters. For "35231", this creates ["3", "5", "2", "3", "1"].

// .map(Number): The map function is used to iterate over each element of the array. The Number function is passed as the callback function to map, which converts each string element back into a number. So, the array ["3", "5", "2", "3", "1"] is transformed into [3, 5, 2, 3, 1].

// .reverse(): Finally, the reverse method is called on the array to reverse its elements, resulting in [1, 3, 2, 5, 3].

// This solution is efficient and makes good use of JavaScript/TypeScript's built-in methods to create a clean and readable one-liner. It's a great example of how understanding the language's features can lead to more elegant code.