# first minute of a call costs min1 cents,
# each minute from the 2nd up to 10th (inclusive) costs min2_10 cents
# each minute after 10th costs min11 cents.
# You have s cents on your account before the call. What is the duration of the longest call (in minutes rounded down to the nearest integer) you can have?
#
# Example
#
# For min1 = 3, min2_10 = 1, min11 = 2 and s = 20, the output should be
# phoneCall(min1, min2_10, min11, s) = 14.

def phoneCall(min1, min2_10, min11, s)
  curr_min = 0
  money_left = s
  cost = [min1.to_i, min2_10.to_i, min11.to_i]

  while money_left > 0
    if curr_min == 0
      rate = cost[0]
    elsif curr_min < 10 || curr_min == 1
      rate = cost[1]
    else
      rate = cost[2]
    end

    money_left -= rate
    curr_min += 1 unless money_left < 0
  end

  curr_min
end
