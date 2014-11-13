# euler40.rb
# simple, but fun. Made me think. Still a tad brute forcey, though. And it's
# just a little slow, but probably under 5 seconds.
def d n
  i = place = 1
  while true
    i.to_s.split("").each do |j| 
      return j.to_i if place == n
      place += 1
    end
    i += 1
  end
end
answer = 1
(0..6).each {|i| answer *= d(10**i)}
p answer
  