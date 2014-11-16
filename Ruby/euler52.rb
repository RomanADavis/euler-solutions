# euler52.rb
# Not blazing fast, but it's simple, and it works.
def check_for_doubles n
  2.upto(6) {|i| return false unless n.to_s.split("").sort == (n * i).to_s.split("").sort}
  true
end

i = 1
while true
  if check_for_doubles i
    p i
    break
  end
  i += 1
end