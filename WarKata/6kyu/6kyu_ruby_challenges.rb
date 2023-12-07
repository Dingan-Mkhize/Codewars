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