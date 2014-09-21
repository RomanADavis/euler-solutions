largest = 0
(900..999).each do |i|
  (900..999).each do |j|
    if (i * j).to_s == (i * j).to_s.reverse
      largest = i * j
    end
  end
end

puts largest