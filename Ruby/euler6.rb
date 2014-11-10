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