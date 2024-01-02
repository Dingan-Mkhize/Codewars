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