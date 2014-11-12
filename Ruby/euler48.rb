# euler48.rb
# It works. Could I get more efficiency by adding the last ten digits? Does it
# matter? There's almost certainly a more ruby way to do it.

def sum_of_powers n
  sum = 0
  (1..n).each {|i| sum += (i**i)}
  sum
end

p sum_of_powers(1000).to_s[-10..-1]