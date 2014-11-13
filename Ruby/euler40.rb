# euler40.rb
# simple, but fun. Made me think. Still a tad brute forcey, though. And it's
# just a little slow, but probably under 2 seconds.
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
# At least I didn't make a big dumb string like a lot of people in the PE 
# thread. Actually, I wonder if a bunch of small lists is better than one dumb 
# string after all? Hmm.