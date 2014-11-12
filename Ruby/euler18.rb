# euler18.rb

triangle = File.open("triangle.txt").readlines.map! {|i| i.gsub("\n", "")}
triangle.map! {|i| i.split(" ")}
p triangle