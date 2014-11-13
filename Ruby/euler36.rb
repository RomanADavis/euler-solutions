# euler36.rb
sum = 0
(1..1e6).each do |i|
  d, b = i.to_s, i.to_s(2)
  sum += i if (d == d.reverse) && (b == b.reverse)
end
p sum
# should figure out how to remove even numbers (all binary numbers start with 
# one, only odd binary numbers end in one)

# maybe write my own binary converter? Should be able to do it. Would prove a 
# lot more than this proved.