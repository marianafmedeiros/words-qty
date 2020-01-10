require './english_dic.rb'

class WordsQty 

  def initialize(sequence, dic)
    @sequence = sequence
    @dic = dic
  end

  def possibilities()
    list_of_words = []
    chars = @sequence.chars
    (3..chars.length).each do |i|
      combinations = chars.combination(i)
      @dic.each do |word| 
        combinations.each do |comb|
          freq_comb = char_freq(comb.join)
          freq_word = char_freq(word)
          list_of_words << word if freq_comb==freq_word
        end
      end  
    end
    list_of_words 
  end 

  def char_freq(input)
    word_array = input.chars
    freq = Hash.new(0)
    word_array.each { |character| freq[character] += 1}
    freq
  end  


end 


