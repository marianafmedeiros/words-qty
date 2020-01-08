require './words_qty.rb'

puts "Put the sequence of letters"
a = gets.chomp()
puts a.class
word = WordsQty.new(a)
puts word.test
