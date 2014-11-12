# euler34.rb
# doesn't work
def bang n
  return n if n < 3
  (1..n).to_a.inject(:*)
end
def curious n
  n.to_s.split("").map! {|i| bang(i.to_i)}.inject(:+)
end
sum = 0
(10..1e6).each do |i|
  sum += i if i == curious(i)
end
p sum