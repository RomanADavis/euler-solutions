# euler45.rb
def triangle n
  (n + 1) * n / 2
end

def pentagon n
  (3 * n - 1) * n / 2
end

def hexagon n
  (2 * n - 1) * n
end

a, b, c = 286, 166, 143
while true
  b += 1 if triangle(a) > pentagon(b)
  c += 1 if triangle(a) > hexagon(c)
  if triangle(a) == pentagon(b) && triangle(a) == hexagon(c)
    p triangle(a)
    break
  end
  a += 1
end