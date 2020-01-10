require './words_qty.rb'
require './english_dic.rb'

puts "Put the sequence of letters"
a = gets.chomp()
word = WordsQty.new(a, EnglishDic.new('words_alpha.txt').lines)
puts "the possible words are \n\n"
puts word.possibilities

# word.instance_variable_get(:@array_length)