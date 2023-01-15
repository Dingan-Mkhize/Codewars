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

