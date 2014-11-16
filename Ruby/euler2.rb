# Solution for Project Euler 2 in Ruby
fib1, fib2, sum = 1, 1, 0
while fib1 < 4e6
	fib1, fib2 = fib1 + fib2, fib1
	sum += fib1 if fib1 % 2 == 0
end
p sum

# Does the same thing, except recursively
def fibs fib1 = 0, fib2 = 1
  fib1, fib2 = fib2, fib1 + fib2
  return 0 if fib1 > 4e6
  fib1 % 2 == 0 ? fibs(fib1, fib2) + fib1 : fibs(fib1, fib2)
end
p fibs

# So, if you look at the fibonacci sequence for a second:
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144..
# It rapidly becomes obvious that every third fib number is even. This seems
# really obvious once you think about for a second. An even number + an odd
# number is odd. An odd number plus an odd number is even. Any number sequence 
# with the same structure would either be all even, or odd except for every
# third number.

total = 0
a = b = 1
c = a + b
while c < 4e6
  total += c
  a = b + c
  b = c + a
  c = a + b
end
p total