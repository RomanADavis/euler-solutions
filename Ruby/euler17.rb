# euler17.rb
# doesn't work, yet. I wonder, why not?
ones = ["","one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
tens = ["", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

count, nums = 0, []

teens.each {|i| nums << i}

tens.each do |i|
  ones.each {|j| nums << (i + j)}
end

ones[1..-1].each do |i|
  nums << (i + "hundred")
  tens.each do |j|
    ones[1..-1].each {|k| nums << (i + "hundred" + "and" + j + k)}
  end
  tens[1..-1].each {|j| nums << (i + "hundred" + "and" + j)}
  teens.each {|j| nums << (i + "hundred" + "and" + j)} 
end
nums << "one" + "thousand"
puts nums
nums.each {|i| count += i.length}
puts count
