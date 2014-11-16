# euler10.rb

# Below is an earlier, slower, solution.
# this is really slow.
def prime? n
  (2..Math.sqrt(n)).each {|i| return false if n % i == 0 }
  true
end

sum = 2
(3..2e6).each {|i| sum += i if prime? i}
p sum
# Tred to make a sieve. Still too slow.

def cross_out sieve, n
  sieve.delete_if {|i| i % n == 0 && i != n}
end

sum = 2
all = [2] + (3..2e6).step(2).to_a
3.upto(Math.sqrt(2e6)) {|j| cross_out(all, j)}
p all.inject(:+)