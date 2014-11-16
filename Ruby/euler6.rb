sum_of_squares = (1..100).map {|num| num ** 2}.inject(:+)
square_of_sum = (1..100).inject(:+) ** 2

puts square_of_sum - sum_of_squares

# Recursion, again!
def from_this n=100, sum=0
  return sum**2 if n == 0
  sum += n
  from_this n - 1, sum
end

def subtract_this n=100
  return 1 if n == 1
  subtract_this(n - 1)+ n ** 2
end

p from_this - subtract_this

# Combined recursion!
def combined_method n=100, sum=0, square=0
  return square**2 - sum if n == 0
  square, sum = square + n, sum + n**2
  combined_method(n - 1, sum, square)
end

p combined_method

# The above solution is really dumb. To get the sum, all you need is to square 
# equation for the triangle number formula. (n * (n + 1) / 2)**2, where n is 
# 100.

def square_sum_up_to n=100
  (n * (n + 1) / 2)**2
end

# The triangle number formula is pretty easy, actually, to derive from that add
# all the numbers up to 100 trick you probably learned as a kid. But can you do
# the same with sum of squares? Yes, but it requires a lot more algebra. The
# equations, though, is simply (2n + 1) * (n + 1) * n / 6.

def sum_up_to_squared n=100
  (2 * n + 1) * (n + 1) * n / 6
end

p square_sum_up_to - sum_up_to_squared
# Way faster than asking Ruby to go through all those loops, I bet.