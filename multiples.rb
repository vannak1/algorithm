##
# Given numbers x and n, where n is a power of 2, print out the smallest multiple
# of n which is greater than or equal to x. Do not use division or modulo operator.
# Input Sample:
# 13, 8
# 17, 16
# Output Sample:
# 16
# 32
# No division or modulo.
##

def multiples(x, n)
  e = 1
  y = 1

  # Solves 2^e = n. Not using ln because no division allowed.
  # If division is allowed, this can be done by using x = ln(n) / ln(base)
  # with base being 2 in this case.
  while n != y
    y = 2 ** e
    e += 1
  end

  # Starts from 2 ** n and finds closest n to x.
  while y < x
    y = 2 ** e
    e += 1
  end

  puts y
end
