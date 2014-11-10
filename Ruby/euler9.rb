# euler9.rb
(2...500).each do |c|
  (1...c).each do |b|
    (1...b).each do |a|
      if a + b + c == 1000 && a**2 + b**2 == c**2
        p a * b * c
      end
    end
  end
end
