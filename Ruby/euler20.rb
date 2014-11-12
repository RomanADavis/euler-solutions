# euler20.rb
p (1..100).inject(:*).to_s.split("").map! {|i| i.to_i}.inject(:+)