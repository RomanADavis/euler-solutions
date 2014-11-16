large = (1..20).inject(:*)
product = 1

(2..20).each do |num|
  i = 1
  while product % num != 0
    if product * i % num == 0
      product = product * i
    end
    i += 1
  end
end
p product

# Does the above, except with recursion!
def smallest_factor num=2, product=1, i=1
  return product if num > 20
  product * i % num == 0 ? (num, product, i = num + 1, product * i, 1) : i += 1
  smallest_factor(num, product, i)
end

p smallest_factor

# So, I looked up a faster way to do this on project euler. Something involving 
# log. I don't really understand log, and less about how it's implemented in 
# Ruby. This is a note to myself that I really ought to learn those things.