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

# Wouldn't it be faster if it went backwards?
def largest_palindrome
  999.downto(900) do |i|
    999.downto(900) {|j| return i * j if (i * j).to_s == (i * j).to_s.reverse}
  end
end
p largest_palindrome

# 6 digit palindromes (all even number digit palindromes?) have to be divisible
# by 11. 11 is prime, so either i or j have to be divisible by 11. The PE pdf
# uses some weird and nasty psuedocode to do this, but ruby gives us some pretty
# methods to make this sort of iteration easier and let us loop through 11x less
# loops.
def largest_p 
  999.downto(900) do |i|
    990.step(900, -11) {|j| return i * j if (i * j).to_s == (i*j).to_s.reverse}
  end
end
p largest_p