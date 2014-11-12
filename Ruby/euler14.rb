# euler14.rb
big, answer = 0, 1
(1..1e6).each do |i|
  j, a = 0, i
  while i != 1
    j += 1
    i % 2 == 0 ? i = i / 2 : i = 3 * i + 1
  end
  big, answer = j, a if j > big
end
p answer