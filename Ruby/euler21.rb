# euler21.rb
def sum_of_factors n
  factors = []
  (1..n/2).each {|i| factors << i if n % i == 0}
  factors.uniq.inject(:+)
end
count, i = 0, 2
while i <= 10000
  count += i if i == sum_of_factors(sum_of_factors(i)) && i != sum_of_factors(i)
  i += 1
end
p count