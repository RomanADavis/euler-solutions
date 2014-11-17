# euler55.rb
# Works.
count = 0
1e4.to_i.downto(1) do |i|
  tries = 0
  while true
    i += i.to_s.reverse.to_i
    break if i.to_s == i.to_s.reverse
    if tries > 50
      count += 1
      break
    end
    tries += 1
  end
end

p count