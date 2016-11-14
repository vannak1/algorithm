##
# The Fibonacci series is defined as: F(0) = 0; F(1) = 1; F(n) = F(n–1) + F(n–2)
# when n>1. Given an integer n≥0, print out the F(n).
##

def fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1

  return fibonacci(n-1) + fibonacci(n-2)
end
