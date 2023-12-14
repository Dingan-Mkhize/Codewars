# Return an array containing the numbers from 1 to N, where N is the parametered value.

# Replace certain values however if any of the following conditions are met:

#     If the value is a multiple of 3: use the value "Fizz" instead
#     If the value is a multiple of 5: use the value "Buzz" instead
#     If the value is a multiple of 3 & 5: use the value "FizzBuzz" instead

# N will never be less than 1.

# My solution:

# def fizzbuzz(n)
#   result = []

#   (1..n).each do |num|
#     if num % 3 == 0 && num % 5 == 0
#       result << "FizzBuzz"
#     elsif num % 3 == 0
#       result << "Fizz"
#     elsif num % 5 == 0
#       result << "Buzz"
#     else
#       result << num
#     end
#   end

#   return result
# end

# Leap Years

# In this kata you should simply determine, whether a given year is a leap year or not. In case you don't know the rules, here they are:

#     Years divisible by 4 are leap years,
#     but years divisible by 100 are not leap years,
#     but years divisible by 400 are leap years.

#     My solution:

#     def is_leap_year(year)
#   (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
# end

# Best solution: 

# def is_leap_year(year)
#   DateTime.leap? year
# end

# Product of the main diagonal of a square matrix.

# Given a list of rows of a square matrix, find the product of the main diagonal.

# Examples:

#   [[1, 0], [0, 1]] should return 1
#   [[1, 2, 3], [4, 5, 6], [7, 8, 9]] should return 45

# My solution:

# def main_diagonal_product(matrix)
#   # Check if the matrix is empty
#   return nil if matrix.empty?

#   # Check if the matrix is a square matrix
#   return nil unless matrix.all? { |row| row.length == matrix.length }

#   # Initialize the product to 1
#   product = 1

#   # Iterate through the rows and multiply the main diagonal elements
#   matrix.each_with_index do |row, i|
#     product *= row[i]
#   end

#   return product
# end

# Better solution: 

# def main_diagonal_product(mat)
#   mat.each_with_index.inject(1) { |n, (v, i)| n * v[i] }
# end

# Smallest value of an array

# Write a function that can return the smallest value of an array or the index of that value. The function's 2nd parameter will tell whether it should return the value or the index.

# Assume the first parameter will always be an array filled with at least 1 number and no duplicates. Assume the second parameter will be a string holding one of two values: 'value' and 'index'.

# min([1,2,3,4,5], 'value') // => 1
# min([1,2,3,4,5], 'index') // => 0

# My solution:

# def find_smallest(numbers,to_return)
# if to_return == 'value'
#     # Return the smallest value in the array
#     numbers.min
#   elsif to_return == 'index'
#     # Return the index of the smallest value in the array
#     numbers.index(numbers.min)
#   else
#     # Handle invalid to_return
#     puts 'Invalid to_return. Please use "value" or "index".'
#     nil
#   end
# end

# The function find_smallest takes two parameters: numbers (an array) and to_return (a string).

# Inside the function, there is an if-elsif-else structure to determine what to return based on the value of to_return.

# The first condition (if to_return == 'value') checks if to_return is equal to the string 'value'. If true, it returns the smallest value in the array using numbers.min.

# The second condition (elsif to_return == 'index') checks if to_return is equal to the string 'index'. If true, it returns the index of the smallest value in the array using numbers.index(numbers.min).

# If neither of the above conditions is true, it means that an invalid to_return value was provided. In this case, it prints an error message to the console using puts and returns nil.

# Best solution: 

# def find_smallest(numbers,to_return)
#   to_return == "value" ? numbers.min : numbers.index(numbers.min)
# end

# Disemvowel Trolls

# Trolls are attacking your comment section!

# A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

# Your task is to write a function that takes a string and return a new string with all vowels removed.

# For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

# Note: for this kata y isn't considered a vowel.

# My solution:

# def disemvowel(str)
#   vowels = "aeiouAEIOU"
#   result = ""

#   str.each_char do |char|
#     result += char unless vowels.include?(char)
#   end

#   result
# end

#     vowels is a string containing all vowel characters.
#     We initialize an empty string result to store the characters without vowels.
#     We iterate through each character in the input string (str) using each_char.
#     If the current character is not a vowel (not included in the vowels string), we append it to the result string.
#     The final result is a string without vowels.

# Better solution:

# def disemvowel(str)
#   str.delete('aeiouAEIOU')
# end

# Small enough? - Beginners 

# You will be given an array and a limit value. You must check that all values in the array are below or equal to the limit value. If they are, return true. Else, return false.

# You can assume all values in the array are numbers.

# My solution: 

# def small_enough(arr, limit)
#   arr.all? { |value| value <= limit }
# end

# Method Definition:

# def small_enough(arr, limit): This line defines a method named small_enough that takes two parameters—an array arr and a limit value.

#   Array Check:

# arr.all?: The all? method is used on the array arr. It returns true if the block provided evaluates to true for all elements in the array; otherwise, it returns false.

# Block Execution:

# { |value| value <= limit }: This block of code is passed to all?. It checks if each value in the array is less than or equal to the limit.

# Return Statement:

# The result of arr.all? { |value| value <= limit } is implicitly returned by the method. If all values in the array are less than or equal to the limit, it returns true; otherwise, it returns false.

# Best solution:

# def small_enough(a, limit)
#   a.max <= limit
# end

# Re-open class:

# Ruby and Javascript let you re-open classes so you can add new functionalities to existing classes and objects.

# To demonstrate this, you'll have to add a new method (called my_new_method in Ruby or myNewMethod in JS / Coffeescript) into the String class that simply calls the upcase method (toUpperCase() in JS / Coffeescript), so that:

# My solution:

# class String
#   def  my_new_method 
#     self.upcase
#     end
#   end

#   We reopen the String class and define my_new_method. The self keyword refers to the string object on which the method is called. The upcase method is a built-in Ruby method that converts all characters in the string to uppercase.

#   Ruby and JavaScript are dynamic languages that allow modifications to classes at runtime. This includes adding new methods to existing classes.
#   The self keyword in Ruby and this in JavaScript refer to the instance of the object on which the method is called, allowing you to manipulate the object's data.
#   Caution:
#   While this is a powerful feature, it should be used judiciously. Modifying built-in classes can lead to conflicts and unexpected behavior, especially in large codebases or when using external libraries.

# Remove All The Marked Elements of a List

# Define a method/function that removes from a given array of integers all the values contained in a second array.

# My solution:

# class Array
#   def remove_(integer_list, values_list)
#     integer_list - values_list
#   end
# end

# The method remove_ is defined with two parameters: original_array (the array from which you want to remove elements) and elements_to_remove (the array containing elements to be removed).
# Inside the method, we use the - operator. This operator takes two arrays and returns a new array containing the elements of the first array that are not found in the second array.
# In the example, array1 is [1, 2, 3, 4, 5] and array2 is [2, 4]. The method call remove_elements(array1, array2) returns a new array [1, 3, 5] since 2 and 4 are removed.
# This method is concise and leverages Ruby's built-in array capabilities for efficient processing.

