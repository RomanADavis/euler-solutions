# euler25.rb
# really easy, brute force, fast.
fib1, fib2, count = 1, 1, 2

while fib1.to_s.length < 1000
  fib1, fib2, count = fib1 + fib2, fib1, count + 1
end
p count