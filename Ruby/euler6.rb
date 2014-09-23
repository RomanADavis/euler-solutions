sum_of_squares = ((1..100).map {|num| num ** 2}).inject(:+)
square_of_sum = ((1..100).inject(:+)) ** 2

puts square_of_sum - sum_of_squares