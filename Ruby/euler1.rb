# Project Euler 1 in Ruby
sum = 0
(1..999).each do |i|
	sum += i if i % 3 == 0 or i % 5 == 0
end
puts sum