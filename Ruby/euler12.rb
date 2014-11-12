# euler12.rb
# slow
def triangle num
  (1..num).inject(:+)
end

def factors num
  factors = []
  (1..Math.sqrt(num)).each {|i| factors += [i, num / i] if num % i == 0}
  factors.uniq.length
end

i = 1
while true
  if factors(triangle(i)) > 500
    p triangle i
    break
  end
  i += 1
end