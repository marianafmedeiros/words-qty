class WordsQty
  # attr_accessor :test
  # @test = "teste"

  def initialize(sequence)
    @chars_list = sequence.chars
  end

  def possibilities()
    possibilities = []
    input_length = @chars_list.length()
    i = 3
    loop do
      chars_combinations = @chars_list.combination(i).to_a
      possible_words = []
      chars_combinations.each do |set|
        permutations = set.permutation().to_a
        permutations.each do |each|
          

      end

      if i == input_length
        break
      end
      

    end
    
  end 

  def all_possibilities(array_length)


end 


