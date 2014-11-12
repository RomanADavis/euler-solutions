# euler23.rb
# Code is too slow. May not work. I may give up.
def sum_factors n
  factors = []
  (1..n/2).each {|i| factors << i if n % i == 0}
  factors.uniq.inject(:+)
end
top = 28123 # highest possible nonsum of abundant nums by analysis
big = (1..(top - 1)).to_a
abundant = []
big[1..-1].each {|i| abundant << i if sum_factors(i) > i}
abundant.each do |i|
  abundant.each {|j| big.delete(i + j) if big.include? (i + j)}
end
p big.inject(:+)