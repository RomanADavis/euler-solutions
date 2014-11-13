# euler29.rb
# Easy peasy. Tad slow, though. And I'm sure there's a more elegant way to do
# this.
a = []
(2..100).each do |i|
  (2..100).each do |j|
     a << (i**j)
  end
  a = a.uniq
end
p a.uniq.length
