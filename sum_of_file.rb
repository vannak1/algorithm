##
# Print out the sum of integers read from a file.
##

def sum(arr_of_int)
  arr_of_int.reduce(:+)
end
