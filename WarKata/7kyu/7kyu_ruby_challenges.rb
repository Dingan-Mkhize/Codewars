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