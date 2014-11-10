# euler8.rb
number = File.open("thousand_digit_number.txt").readlines.join.gsub("\n", "")
number = number.split("").map! {|i| i.to_i}
largest = 0
(0...number.length - 13).each do |i|
  l = number[i...i + 13]
  l = l.inject(:*)
  largest = l if l > largest
end
p largest
p 9 ** 13 # sanity check: I screwed up if it's higher than this