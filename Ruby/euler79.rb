# euler79.rb
# 73162980
# Assumes no repeating numbers. Did it by hand. Seeing if I can teach ruby to 
# do it.
logs = File.read("keylog.txt").gsub("\n", " ")
nums = logs.gsub(" ", "").split("").uniq.sort
length = nums.length
keys = logs.split(" ").uniq
length = keys.length


password = []
(1..length).each do |i|
  all_members = nums
  keys.each do |key|
    num.each do 
  end
end
