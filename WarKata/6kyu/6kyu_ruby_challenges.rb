# Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

# Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case

# My solution:
# def count_bits(n)
#   binary_representation = n.to_s(2)
#   count = 0

#   binary_representation.each_char do |bit|
#     count += 1 if bit == '1'
#   end

#   count
# end

# def count_set_bits(n) - This line defines a method named count_set_bits that takes an integer n as a parameter.

# binary_representation = n.to_s(2) - Converts the integer n to its binary representation using to_s(2). The result is stored in the variable binary_representation.

# count = 0 - Initializes a variable count to keep track of the number of set bits (ones) in the binary representation.

# binary_representation.each_char do |bit| - Iterates through each character (bit) in the binary representation.

# count += 1 if bit == '1' - Increments the count if the current character (bit) is equal to '1', indicating a set bit.

# end - Marks the end of the loop.

# count - The method returns the final count of set bits.

# Better solution: 

# def count_bits(n)
#   n.to_s(2).count "1"
# end

# Convert string to camel case

# Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case). The next words should be always capitalized.
# Examples

# "the-stealth-warrior" gets converted to "theStealthWarrior"

# "The_Stealth_Warrior" gets converted to "TheStealthWarrior"

# "The_Stealth-Warrior" gets converted to "TheStealthWarrior"

# My solution:

# def to_camel_case(str)
#   str.split(/-|_/).each_with_index.map do |word, index|
#     # If it's the first word and the original string started with a lowercase letter, return it as is
#     if index == 0 && str[0] == str[0].downcase
#       word
#     else
#       # Capitalize the first letter of each subsequent word
#       word.capitalize
#     end
#   end.join
# end

# Splitting the String: The split method is used with a regular expression /-|_/ to split the string into an array of words, dividing it at dashes (-) or underscores (_).

# Mapping Over the Words: The map function is used to iterate over the array of words. For each word:

# If it's the first word and the original string started with a lowercase letter, it's returned as is (to handle the Upper Camel Case/Pascal Case condition).
# For all other words, or if the first word starts with an uppercase letter, the first letter of the word is capitalized, and the rest of the word is added as is.
# Joining the Words: Finally, the join('') method is used to concatenate all the processed words back into a single string, forming the camel-cased result.

# This function will work for strings delimited by either dashes or underscores and will correctly handle the capitalization based on the original string's casing.

# Better Solution:

# def to_camel_case(str)
#   str.gsub(/[_-](.)/) {"#{$1.upcase}"}
# end