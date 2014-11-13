# euler37.rb
def prime? n
  return false if n == 1
  return true if n == 2
  (2..Math.sqrt(n)).each {|i| return false if n % i == 0}
  true
end

single = [2,3,5,7]
middle = [1, 9] # Two can't be in the middle, but 1 and 9 can only be in the middle
trunk = []

middle.each do |i| # No dual truncatable primes over two digits lead with two. Don't know why.
  single[1..-1].each do |j| 
    single[1..-1].each do |k| # No multi digit prime ends in two.
      candidate = (j.to_s + k.to_s).to_i
      trunk << candidate if prime? candidate
      candidate = (j.to_s + i.to_s + k.to_s).to_i
      trunk << candidate if prime?(candidate) && prime?(candidate.to_s[0..1].to_i) && prime?(candidate.to_s[1..-1].to_i)
    end
  end
end
p trunk.uniq.sort
# Above works fine. Below is a monster I have yet to tame.
while trunk.uniq.length < 11
  trunk.each do |i|
    single.each do |j|
      candidate = (i.to_s + j.to_s).to_i
      trunk << candidate if prime?(candidate)&& !trunk.include?(candidate)
      middle.each do |k| 
        candidate_a = (j.to_s + k.to_s + i.to_s).to_i
        candidate_b = (i.to_s + k.to_s + j.to_s).to_i
        trunk << candidate_a if prime?(candidate_a) && !trunk.include?(candidate_a)
        trunk << candidate_b if prime?(candidate_b) && !trunk.include?(candidate_b)
      end
    end
  end
end

p trunk.uniq.sort