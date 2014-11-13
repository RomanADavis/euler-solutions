# euler39.rb
# brute force is just a tad too slow.
# it sort of works. But it still has the wrong size.
largest, size = 120, 3
(6..1000).each do |z|
  sum = 0
  (1..1000).each do |a|
    (1..a).each {|b| sum += 1 if b**2 + (z - (a + b))**2 == a**2}
  end
  if sum > size
    largest = z
    size = sum
  end
end

puts largest