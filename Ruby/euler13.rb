# euler13.rb
numbers = File.open("add_it_up.txt").readlines.map! {|i| i.gsub("\n", "").to_i}
p numbers.inject(:+).to_s[0..9]