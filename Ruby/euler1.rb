# Project Euler 1 in Ruby
sum = 0
(1..999).each {|i| sum += i if i % 3 == 0 or i % 5 == 0}
p sum

def euler_rec n=999
  return 0 if n == 0
  n % 3 == 0 || n % 5 == 0 ? n + euler_rec(n -1) : euler_rec(n - 1)
end

p euler_rec