# euler56.rb
# Did you know that ruby will handle 99 ** 99 no problem?
# Yeah, me either. Here's another trivial brute force method.
big = 0
50.upto(99) do |i|
  50.upto(99) do |j|
    candidate = (i ** j).to_s.split("").map {|i| i.to_i}.inject(:+)
    big = candidate if candidate > big
  end
end
p big