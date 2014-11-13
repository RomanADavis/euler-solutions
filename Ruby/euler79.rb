# euler79.rb
# Assumes no repeating numbers. Did it by hand. Seeing if I can teach ruby to 
# do it.
logs = File.read("keylog.txt").gsub("\n", " ")
nums = logs.gsub(" ", "").split("").uniq.sort
length = nums.length
keys = logs.split(" ").uniq
length = keys.length

password = []
p nums
p password
password << 2
p nums - password
(1..length).each do |i|
  all_members -= password
  keys.each do |key|
  end
end