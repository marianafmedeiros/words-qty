require './words_qty.rb'

puts "Put the sequence of letters"
a = gets.chomp()
word = WordsQty.new(a)
word.possibilities
puts word.instance_variable_get(:@array_length).class