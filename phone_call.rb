#Solution to Codefights Arcade
#Problem
#Phone usage rate as described:
#first minute costs min1 cents
#each minute 2-10 inclusive costs min2_10 cents
#each minute after 10th costs min11 cents
#Given s cents before call, what's the longest duration rounded down to the nearest integer?
#Example:
#For min1 = 3, min2_10 = 1, min11 = 2 and s = 20, the output should be
#phoneCall(min1, min2_10, min11, s) = 14.

def call_duration(min1, min2_10, min11, s)
  duration = 0

  #minute1
  duration = 1 if s - min1 <= 0

  #between 2-10
  if s - min1 - min2_10 * 9 <= 0
    duration = 1 + ( ( s-min1 ) / min2_10 )
  end

  #greater than 11 min
  duration = 10 + (s / (s - (min1 + min2_10 * 9))


end

call_duration(3, 1, 2, 20)
