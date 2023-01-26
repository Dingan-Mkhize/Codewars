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