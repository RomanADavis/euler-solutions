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

# This is a way more clever verson. It just divides by every factor that goes
# into it, and repeats the same factor if successful, so every number has to be
# prime and you never have to check for primeness. And, the icing on the cake 
# that it starts from 2 and goes up, so it never even has to check if it's the
# greatest factor. The last factor that succeeds is the greatest factor.
n, factor, last_factor = arb, 2, 1
while n > 1
  last_factor, n  = factor, n / factor if n % factor == 0
  while n % factor == 0
    n = n /factor
  end
  factor += 1
end
p last_factor

# Of course, we can halve the number of times it has to loop through if we treat
# two seperately, and then loop through every odd number after that.
n, factor, last_factor = arb, 2, 1
if n % 2 == 0
  last_factor = 2
  while n % 2 == 0
    n = n / 2
  end
end
while n > 1
  last_factor, n  = factor, n / factor if n % factor == 0
  while n % factor == 0
    n = n /factor
  end
  factor += 1
end
p last_factor
