largest = 0
(900..999).each do |i|
  (900..999).each do |j|
    largest = i * j if (i * j).to_s == (i * j).to_s.reverse
  end
end
p largest

# Recursive solution. Uses some optimizations found on the project euler forums
# to keep the stack from getting too big.
def largest_product(i=900, j=(11 * 82) , big=0)
  return big if i == 999 && j > 999
  big = i * j if (i * j).to_s == (i * j).to_s.reverse
  return largest_product(i + 1, (11 * 82), big) if j > 999
  largest_product(i, j + 11, big)
end
p largest_product