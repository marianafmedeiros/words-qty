require './english_dic.rb'

class WordsQty

  def initialize(sequence)
    @sequence = sequence
  end

  def possibilities()
    list_of_words = []
    dic = EnglishDic.new('words_alpha.txt')
    i = 3
    while i <= @sequence.chars.length
      combinations = @sequence.chars.combination(i).to_a
      combinations.each do |comb|
        dic.lines.each do |word| 
          freq_comb = char_freq(comb.join())
          freq_word = char_freq(word)
          if freq_comb == freq_word
            list_of_words << word
          end
        end
      end  
      i += 1
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


