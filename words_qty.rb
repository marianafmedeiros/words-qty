require './english_dic.rb'

class WordsQty

  def initialize(sequence)
    @sequence = sequence
  end

  def possibilities()
    list_of_words = []
    dic = EnglishDic.new('words_alpha.txt')
    dic.lines.each do |word| 
      freq_input = char_freq(@sequence)
      freq_word = char_freq(word)
      if freq_input == freq_word
        list_of_words << word
      end
    end
    puts list_of_words  
  end 

  def char_freq(input)
    word_array = input.chars
    freq = Hash.new(0)
    word_array.each { |character| freq[character] += 1}
    freq
  end  


end 


