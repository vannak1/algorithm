num_of_friends = gets.chomp.to_i
num_of_frames = gets.chomp.to_i

def factorial(n)
  return 1 if n < 1
  n * factorial(n-1)
end

def ncr(n, r)
  factorial(n) / (factorial(r) * factorial(n-r))
end

def calc_frames(friends, frames)
  num_of_selfies = 0

  friends.times do |i|
    num_of_selfies += ncr(friends, i + 1)
  end

  frames_needed = (frames - num_of_selfies).abs
end

calc_frames(num_of_friends, num_of_frames)
