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
puts product