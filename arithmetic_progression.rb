#input [2,4,2]
#output  {}, {2}, {4}, {2}, {2, 4}, {4,2}, {2, 2}

# Enter your code here. Read input from STDIN. Print output to STDOUT
# num_of_inputs = gets.chomp.to_i
# array_of_inputs = []
# num_of_inputs.times{ array_of_inputs.push(gets.chomp.to_i)}

def factorial(n)
  return 1 if n < 1
  n * factorial(n-1)
end

def ncr(n, r)
  factorial(n) / (factorial(r) * factorial(n-r))
end

def count_progression(n, array)
    #adds for empty set, single set, and doubles
    total = 1 + n + ncr(3,2)
    copy_array = array
    #iterates through every single element
    array.each_with_index do |el, i|
      #find difference between el and all other el in array.
      diff = []
      iteration = array.length - 1 - i
      puts "outside #{el} index: #{i}"

      iteration.times do |j|
        diff << (array[i+j+1] - el).abs
        puts "inside #{j} element: #{el} array_el: #{array[i+j]} diff: #{diff}"
      end

      #count how many times a constant difference appears
      #iterates through the difference array.  finds all similar diff, adds to total
      diff.each do |el|

      end
    end
end

count_progression(10, [18,44,66,73,91,9,90,49,64,42])
