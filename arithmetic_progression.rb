#input [2,4,2]
#output  {}, {2}, {4}, {2}, {2, 4}, {4,2}, {2, 2}

# Enter your code here. Read input from STDIN. Print output to STDOUT
num_of_inputs = gets.chomp.to_i
array_of_inputs = []
num_of_inputs.times{ array_of_inputs.push(gets.chomp.to_i)}

#create all possible arrangements
#checks if difference is constant

#loop through n-1 times
num_of_inputs - 1.times do |i|
  temp = []

  #iterate through all 0 and 2 length

  #on 3rd iteration check if difference is constant then push
end
