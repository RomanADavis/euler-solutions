# euler15.rb
# Make Pascal's triangle 20 numbers high and returns the middle number. I'm
# certain there's a more elegant solution, but it works, and it's fast.

i = 1
last = [1, 1]
while i != 40 # number of squares * 2
  (0..last.length - 2).each {|i| new << last[i] + last[i + 1]}
  new = last[0] + new + last[-1]
  last = new
  i += 1
end
p last[last.length/2]
p last