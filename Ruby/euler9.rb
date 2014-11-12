# euler9.rb
(1000 / 3...500).each do |c|
  (c / 2...c).each do |b|
     a = 1000 - (b + c)
     p a * b * c if a**2 + b**2 == c**2
  end
end