# euler11.rb
p File.open("grid.txt").readlines.map! {|i| i.chomp.split(" ")}