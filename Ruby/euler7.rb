# euler 7 - find the 10,001st prime
def prime? n
  return false if n % 2 == 0
  i = 3
  while i <= Math.sqrt(n)
    return false if n % i == 0
    i += 2
  end
  true
end

count = 1
num = 3
while true
  count += 1 if prime? num
  if count == 1e4 + 1
    p num
    break
  end
  num += 2
end

# But can we do it recursively?
# This method would probably work if the stack was infinite, but alas, it is
# not.
def rec_prime? n, i=3
  return true if i > Math.sqrt(n)
  return false if n % i == 0
  rec_prime? n, i + 2
end

def euler7 n=3, count=1
  return n if count == 1e4 + 1
  count += 1 if rec_prime? n
  euler7 n + 2, count
end

# maybe a sieve?
