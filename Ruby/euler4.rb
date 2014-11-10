largest = 0
(900..999).each do |i|
  (900..999).each do |j|
    p largest = i * j if (i * j).to_s == (i * j).to_s.reverse
  end
end

puts largest
