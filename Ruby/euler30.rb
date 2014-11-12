# euler30.rb
# Wish I knew more number theory to make this more efficient. It's slow but it
# works.
def sum_of_fifth n
  n.to_s.split("").map! {|i| (i.to_i)**5}.inject(:+)
end
total = 0
(10..1e6).each {|num| total += num if num == sum_of_fifth(num)}
p total