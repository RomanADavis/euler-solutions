# Solution for Project Euler 2 in Ruby
fib1, fib2, sum = 1, 1, 0
while fib1 < 4e6
	fib1, fib2 = fib1 + fib2, fib1
	sum += fib1 if fib1 % 2 == 0
end
p sum

# Does the same thing, except recursively
def fibs n=4e6, fib1 = 0, fib2 = 1
  fib1, fib2 = fib2, fib1 + fib2
  return 0 if fib1 > n
  fib1 % 2 == 0 ? fibs(n, fib1, fib2) + fib1 : fibs(n, fib1, fib2)
end

p fibs