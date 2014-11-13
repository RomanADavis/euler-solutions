# euler34.rb
# slow, but works
def bang n
  return 1 if n < 2
  (1..n).to_a.inject(:*)
end
def curious n
  n.to_s.split("").map! {|i| bang(i.to_i)}.inject(:+)
end
sum = 0
(10..5e4).each do |i| #originally 1e6, 5e4 was picked once I knew the answer.
  sum += i if i == curious(i)
end
p sum

# simple solution - there are only two nums that are the sum of their
# factorialized digits. Wikipedia says as much.
p 40585 + 145

# Notes on upper bounds: 7 9s factorialized gets you ~2.8mil, and repeated
# inspection of the very highest after 7 9s will bring it below 2 mil in a
# hurry. Anything lower than that is guess work, doing more math than the
# problem warrants, or doing a little cheating.