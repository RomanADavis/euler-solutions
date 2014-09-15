# Solution for Project Euler 2 in Ruby
fib1 = 1
fib2 = 1
sum = 0
while fib1 < 4e6
	holder = fib1
	fib1 += fib2
	fib2 = holder
	sum += fib1 if fib1 % 2 == 0
end
puts sum