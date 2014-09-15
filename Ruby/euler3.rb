arb = 600851475143
def prime? num
	(2..Math.sqrt(num)).each do |j|
		return false if num % j == 0
	end
	return true
end
largest = 1
(1...Math.sqrt(arb)).each do |i|	
	largest = i if prime? i if arb % i == 0
end
puts largest
