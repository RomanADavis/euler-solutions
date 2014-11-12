big = 2**1000
big = big.to_s.split("").map! {|i| i.to_i}.inject(:+)
p big