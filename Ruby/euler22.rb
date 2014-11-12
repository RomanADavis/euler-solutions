# euler22.rb
# works, though I'm sure ther's a much more elegant way to do this.
names = File.open("names.txt").read.gsub('"', "").split(",").sort!
names.map! {|i| i.split("")}

count = 0
names.each_with_index do |name, i|
  name.each do |letter|
    ("A".."Z").each_with_index {|alpha, index| count += (index + 1) * (i + 1) if alpha == letter}
  end
end

p count