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
  money_left = s
  cost = [min1]
  9.times { cost.push(min2_10)}
  cost.push(min11)

  i = 0

  while money_left > 0
    if money_left - cost[i] > 0
      duration += 1
      money_left -= cost[i]
      i += 1
    else
      i+= 1
    end
    i += 1
  end

  duration
end
