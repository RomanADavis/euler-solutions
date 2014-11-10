arb = 600851475143
def prime? num
	(2..Math.sqrt(num)).each do |j|
		return false if num % j == 0
	end
	return true
end
largest = 1
(1...Math.sqrt(arb)).each do |i|	
	largest = i if prime? i if arb % i == 0
end
puts largest

# Does the same thing as prime? except recursively
def prime_rec? candidate, top=Math.sqrt(candidate).floor
  return true if top == 1
  return false if candidate % top == 0
  prime_rec? candidate, top - 1
end

# solves the same problem as above, except recursively
def largest_factor(n=600851475143, largest=1, plus_one=3)
  return largest if plus_one > n
  largest, n = plus_one, (n / plus_one) if (n % plus_one == 0) && prime_rec?(plus_one)
  largest_factor(n, largest, plus_one + 2)
end 
p largest_factor
