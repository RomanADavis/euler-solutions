# euler10.rb
# this is really slow.
def prime? n
  (2..Math.sqrt(n)).each {|i| return false if n % i == 0 }
  true
end

sum = 2
(3..2e6).each {|i| sum += i if prime? i}
p sum