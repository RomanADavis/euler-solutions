#euler92.rb
def sum_digits_squared n
  n.to_s.split("").map! {|i| i.to_i**2}.inject(:+)
end

# Originally, I tried to make a list that goes through and adds every number to
# a list. This is too slow and grossly inefficient.

#dead_end = [1]
#known = [89]
#(1..10e6).each do |i|
#  n = i
#  while true
#    if known.include? n
#      known << i
#      break
#    elsif dead_end.include? n
#      dead_end << i
#      break
#    end
#    n = sum_digits_squared n
#  end
#end

#p known.uniq.length

# Then I thought about doing this without the list, but that's pretty slow too.
# Each loop takes too long trying to get to 1 or 81.

#count = 0
#(1...10e6).each do |i|
#  while true
#    if  i == 81
#      count += 1
#      break
#    elsif i == 1
#      break
#    end
#    i = sum_digits_squared i
#  end
#end

#p count

# Then, I realized that the worst case scenario of 9,999,999 only added up to
#p sum_digits_squared 9999999
#=> 567
# Keeping some fraction of 567 items in a list is way more reasonable than 
# potentially millions, so...

#known =[89]
#dead_end = [1]
#(2..567).each do |i|
#  n = i
#  while true
#    if known.include? n
#      known << i # fills up known
#      break
#    elsif dead_end.include? n 
#      dead_end << i # fills up dead_end
#      break
#    end
#    n = sum_digits_squared n
#  end
#end
#known = known.uniq

## And then we check against a much smaller list.
#count = known.length
#(487..1e7).each do |i|
#  while true
#    if known.include? i
#      count += 1
#      break
#    end
#    break if dead_end.include? i
#    i = sum_digits_squared i
#  end
#end
#p count
# This actually works really well, for say, 1e5. But for 1e7, it's real damn
# slow. My hope now is to wait out an hour or so and try to get hints from the
# forum for a more efficient solution. In the meantime, I'l check out fermat's
# theorem of the sum of two squares and see if that helps.

# It worked. But then I realized isn't that while loop unnecessary? Isn't having
# both includes unnecessary? Isn't the dead_end array way shorter to loop 
# through than the known array?
happy = [1] # Numbers that end in 1 are called happy numbers.
(2..567).each do |i|
  n = i
  while true
    if happy.include? n 
      happy << i # fills up happy
      break
    end
    n = sum_digits_squared n
  end
end

count = dead_end.length
(568..1e7).each do |i|
    count += 1 if happy.include?(sum_digits_squared(i))
end
p 1e6 - count
# Still slow, but way faster.

# Looks like most people on PE did a similar brute force solution. Maybe my
# computer is just slow. Or maybe Ruby is. Hmmm.

# There's a way to calculate this so that it treats the numbers as permutions 
# of strings/ arrays (201 is returns the same as 102) that greatly ruduce the 
# number of cases to be checked. That could be interesting. I hope I have time 
# to try it later.

# Should probably look into sets, too. I hear they are faster for certain 
# things.

# Maybe do a quick dictionary to map my squares when I do sum_of_squares?

# Looks like this is still really suboptimal. Hope I have time to update it 
# later