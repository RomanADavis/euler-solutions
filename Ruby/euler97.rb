# euler97.rb
# Once I thought about it for a second, it was cake.
start = 28433
78304.times do 
  start = (start * 2**100).to_s[-11..-1].to_i
end
p (start * 2**57).to_s[-10..-1].to_i + 1