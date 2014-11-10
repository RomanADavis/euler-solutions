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