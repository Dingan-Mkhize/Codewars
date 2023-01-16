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

# My solution:

# def solution(sentence)
#   return sentence.split(" ").reverse.join(" ")
# end

# Best solution:

# def solution(sentence)
#   sentence.split.reverse.join(" ")
# end

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