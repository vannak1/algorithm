##
# Given a positive integer, find the sum of its constituent digits.
# Samples input:
# 23
# 496
# Sample output:
# 5
# 19
##

def sum_of_digits(n)
  sum = 0
  n.each_char {|digit| sum += digit.to_i}

  puts sum
end
