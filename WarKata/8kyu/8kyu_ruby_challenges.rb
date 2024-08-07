# Simple Multiplication
#DESCRIPTION:

# This kata is about multiplying a given number by eight if it is an even number and by nine otherwise.

# My solution:

# def simple_multiplication(number)
#   if number % 2 == 0
#     return number * 8
#   else
#     return number * 9
#   end
# end

# Best solution:

# def simple_multiplication(number)
#   number.even? ? number * 8 : number * 9
# end

# DESCRIPTION:

# Complete the solution so that it reverses all of the words within the string passed in.

# Words are separated by exactly one space and there are no leading or trailing spaces.

# Example(Input --> Output): "The greatest victory is that which requires no battle" --> "battle no requires which that is victory greatest The"

# Reversed Words

# My solution:

# def solution(sentence)
#   return sentence.split(" ").reverse.join(" ")
# end

# Best solution:

# def solution(sentence)
#   sentence.split.reverse.join(" ")
# end

# Crash Override

# DESCRIPTION:

# Your task is to create a function that, given a proper first and last name, will return the correct alias.

# Notes:
# Two objects that return a one word name in response to the first letter of the first name and one for the first letter of the surname are already given. See the examples below for further details.

# If the first character of either of the names given to the function is not a letter from A - Z, you should return "Your name must start with a letter from A - Z."

# Sometimes people might forget to capitalize the first letter of their name so your function should accommodate for these grammatical errors.

# My solution:

# def alias_gen(first, surname)
#   FIRST_NAME[first[0].upcase] + " " + SURNAME[surname[0].upcase]
#     rescue
#       return "Your name must start with a letter from A - Z."
#     end

# Best solution:

# def alias_gen first, sur
#   f = FIRST_NAME[first[0].upcase]
#   l = SURNAME[sur[0].upcase]
#   f && l ? "#{f} #{l}" : "Your name must start with a letter from A - Z."
# end

# Keep Hydrated!

# DESCRIPTION:

# Nathan loves cycling.
# Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres
# of water per hour of cycling.
# You get given the time and you need to return the number of litres Nathan
# will drink, rounded to the smallest value.

# For example:
# time = 3 ----> litres = 1
# time = 6.7---> litres = 3
# time = 11.8--> litres = 5

# My solution:

# def litres(time)
#   (time * 0.5).floor
# end

# Other solution:

# def litres(time)
#   time.div(2)
# end

# Even or Odd

# DESCRIPTION:

# Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

# My solution:

# def evan_or_odd(number)
#   if number % 2 == 0
#     return "Even"
#   else
#     return "Odd"
#   end
# end

# Best solution:

# def even_or_odd(number)
#   number.even? ? "Even" : "Odd"
# end

# Invert Values

# DESCRIPTION:

# Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.

# invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
# invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
# invert([]) == []
# You can assume that all values are integers. Do not mutate the input array/list.

# My solution:

# def invert(list)
#   list.map {|x| 0 - x}
# end

# Best solution:

# def invert(list)
#   list.map { |n| -n }
# end

# String Repeat

# DESCRIPTION:

# Write a function that accepts an integer n and a string s as parameters, and returns a string of s repeated exactly n times.

# Examples (input -> output)
# 6, "I"     -> "IIIIII"
# 5, "Hello" -> "HelloHelloHelloHelloHello"

# My solution:

# def repeat_str (n, s)
#   s * n
# end

# Add Length

# DESCRIPTION:

# What if we need the length of the words separated by a space to be added at the end of that same word and have it returned as an array?

# Example(Input --> Output)

# "apple ban" --> ["apple 5", "ban 3"]
# "you will win" -->["you 3", "will 4", "win 3"]
# Your task is to write a function that takes a String and returns an Array/list with the length of each word added to each element .

# Note: String will have at least one element; words will always be separated by a space.

# My solution:

# def add_length(str)
#   arr = str.split(" ")
#   arr.map{|i| i + " " + i.length.to_s}#your code here
# end

# Alternate methods:

# def add_length(str)
#   str.split.map { |word| "#{word} #{word.length}" }
# end

# def add_length(str)
#   str.split.map { |s| "#{s} #{s.size}" }
# end

# def add_length(str)
#   str.split.map{|i| i + " #{i.size}" }
# end

# Beginner - Reduce but Grow

# DESCRIPTION:

# Given a non-empty array of integers, return the result of multiplying the values together in order. Example:

# [1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24

# My solution:

# def grow(x) 
#   x.inject(:*)
# end

# Best solution:

# def grow(x) 
#   x.reduce(:*)
# end

# Vowel Remover

# DESCRIPTION:

# Create a function called shortcut to remove the lowercase vowels (a, e, i, o, u ) in a given string.

# Examples
# "hello"     -->  "hll"
# "codewars"  -->  "cdwrs"
# "goodbye"   -->  "gdby"
# "HELLO"     -->  "HELLO"

# Don't worry about uppercase vowels
# y is not considered a vowel for this kata.

# My solution:

# def shortcut(s)
#   s.delete("aeiou")
# end

# Function 2 - Squaring an Argument

# DESCRIPTION:

# Now you have to write a function that takes an argument and returns the square of it.

# My solution:

# def square(n) n**2
# end

# Other solutions:

# def square( a )
#   a ** 2
# end

# def square num
#   raise ArgumentError, 'Argument must be a numbers' unless num.is_a?(Integer) 
#   num*num
# end

# def square(number_to_sq)
#  number_to_sq * number_to_sq
# end

# def square(num)
#   num * num
# end

# How many light sabers do you own?

# DESCRIPTION:

# Inspired by the development team at Vooza, write the function that

# accepts the name of a programmer, and
# returns the number of lightsabers owned by that person.
# The only person who owns lightsabers is Zach, by the way. He owns 18, which is an awesome number of lightsabers. Anyone else owns 0.

# Note: your function should have a default parameter.

# For example(Input --> Output):

# "anyone else" --> 0
# "Zach" --> 18

# My solution:

# def how_many_light_sabers_do_you_own(name="")
#   return name == "Zach" ? 18 : 0
# end

# Other solutions:

# def howManyLightsabersDoYouOwn(person="Anyone else")
#   return 18 if person == "Zach"
#   return 0
# end

# def howManyLightsabersDoYouOwn *args
#     args.last == 'Zach' ? 18 : 0
# end

# Convert a boolean to string

# Implement a function which convert the given boolean value into its string representation.

# Note: Only valid inputs will be given.

# My solution:

# def boolean_to_string(b)
#   return b.to_s
# end

# Alternate solutions:

# def boolean_to_string(b)
#   b ? "true" : "false"
# end

# def boolean_to_string(b)
#   b.inspect
# end

# Unfinished Loop - Bug Fixing #1

# Oh no, Timmy's created an infinite loop! Help Timmy find and fix the bug in his unfinished for loop!

# My solution:

# def create_array(n)
#   res=[]
#   i=1
#   while i<=n
#     res+=[i]
#     i+=1
#   end
#   return res
# end

# Best solution:

# def create_array(n)
#   Array(1..n)
# end

# Third Angle of an Angle

# You are given two interior angles (in degrees) of a triangle. Write a function to return the 3rd. Note: only positive integers will be tested.

# My solution:

# def other_angle(a, b)
#     return 180 - a - b# your code here
# end

# Other solution:

# def other_angle(a, b)
#     180 - (a + b)
# end

#Ruturn to sanity check

#This function should return an object, but it's not doing what's intended. What's #wrong?

#My solution:

#def mystery()
  #result = {
    #"sanity": 'Hello'}
  #return
    #result
#end


# Merging sorted integer arrays(without duplicates).

# Write a function that merges two sorted arrays into a single one. The arrays only contain integers. Also, the final outcome must be sorted and not have any duplicate.

# My solution:

# def merge_arrays(a, b)
  #merged_array = (a + b).uniq.sort
  #return merged_array
#end

# Can you find the needle in the haystack?

# Write a function findNeedle() that takes an array full of junk but containing one "needle"

# After your function finds the needle it should return a message (as a string) that says:

#"found the needle at position " plus the index it found the #needle, so: 

# My solution:

#def find_needle(haystack)
  #index = haystack.index("needle")
  #return "found the needle at position #{index}" if index
#end

# To square(root) or not to square(root)

# Instructions:

# Write a method, that will get an integer array as parameter and will process every number from this array.

# Return a new array with processing every number of the input-array like this:

# If the number has an integer square root, take this, otherwise square the number.

# My solution:

# def square_or_square_root(arr)
#   processed_array = arr.map do |number|
#     integer_square_root = Math.sqrt(number).to_i
#     integer_square_root**2 == number ? integer_square_root : number**2
#   end
#   processed_array
# end

# Check your arrows
# You have a quiver of arrows, but some have been damaged. The quiver contains arrows with an optional range information (different types of targets are positioned at different ranges), so each item is an arrow.

# You need to verify that you have some good ones left, in order to prepare for battle:

# anyArrows([{range=> 5}, {range=> 10, damaged=> true}, {damaged=> true}])

# If an arrow in the quiver does not have a damaged status, it means it's new.

# The expected result is a boolean, indicating whether you have any good arrows left.

# My solution:

# def any_arrows(arrows)
#   arrows.each do |arrow|
#     return true unless arrow.key?('damaged') && arrow['damaged'] == true
#   end

#   false
# end

# Better solution:

# def any_arrows(arrows)
#   arrows.any? { |arrow| !arrow['damaged'] }
# end

# Return negatives

# In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?
# Examples

# makeNegative(1);  # return -1
# makeNegative(-5); # return -5
# makeNegative(0);  # return 0

# Notes

#     The number can be negative already, in which case no change is required.
#     Zero (0) is not checked for any specific sign. Negative zeros make no mathematical sense.

# My solution:

# def make_negative(num)
#   num > 0 ? -num : num
# end

# Find Mean

# Find the mean (average) of a list of numbers in an array.
# Information

# To find the mean (average) of a set of numbers add all of the numbers together and divide by the number of values in the list.

# For an example list of 1, 3, 5, 7

# 1. Add all of the numbers

# 1+3+5+7 = 16

# 2. Divide by the number of values in the list. In this example there are 4 numbers in the list.

# 16/4 = 4

# 3. The mean (or average) of this list is 4

# My solution:

# def find_average(nums)
#   return nil if nums.empty?
  
#   sum = nums.reduce(:+)
#   mean = sum.to_f / nums.length
#   mean
# end

# Better solution:

# def find_average(nums)
#   nums.inject(:+) / nums.length.to_f rescue 0
# end


