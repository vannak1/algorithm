# Enter your code here. Read input from STDIN. Print output to STDOUT
num_of_inputs = gets.chomp.to_i

def factorial(n)
  return 1 if n < 1
  n * factorial(n-1)
end

def ncr(n, r)
  factorial(n) / (factorial(r) * factorial(n-r))
end

def calc_sub(num_input)
  count = 0

  num_input.times do |i|
    count += ncr(num_input, i + 1)
  end

  count
end

calc_sub(num_of_inputs)
