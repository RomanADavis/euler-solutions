# euler42.rb
def triangles
  a = []
  (1..25).each {|i| a << (i * (i + 1) / 2)}
  a
end
words = File.open("words.txt").read.gsub('"',"").split(",")
letters = words.map {|i| i.split("")}
alpha = ("A".."Z")
tri_list = triangles

how_many = 0
letters.each do |word|
  sum = 0
  word.each do |letter|
    alpha.each_with_index {|bet, i|  sum += i + 1 if letter == bet}
  end
  how_many += 1 if tri_list.include? sum
end

p how_many
