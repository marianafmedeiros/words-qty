require './words_qty.rb'

RSpec.describe WordsQty do
  let(:dic){ ["bel", "bleu", "blue", "bul", "elb", "leu", "lub", "lube", "lue", "ule", "teste"] }
  describe '#possibilities' do
    context "when user inputs 3 characters or more" do
      it "returns all possible words with input characters" do
        characters = "blue"
        words = WordsQty.new(characters, dic).possibilities
        expect(words).to contain_exactly("bel", "bul", "elb", "leu", "lub", "lue", "ule", "bleu", "blue", "lube")
      end
    end

    context "when user inputs less than 3 characters" do
      it "does not return any match(word) if input is not empty" do
        characters = "as"
        words = WordsQty.new(characters, dic).possibilities
        expect(words).to be_empty
      end

      it "does not return any match(word) if input is empty" do
        characters = ""
        words = WordsQty.new(characters, dic).possibilities
        expect(words).to be_empty
      end
    end
  end

  describe '#char_freq' do
    it 'returns each character frequency as a hash' do
      word = "yellow"
      a = WordsQty.new(word, dic)
      hash = a.char_freq(word)
      freq_hash = {y:1,e:1,l:2,o:1,w:1}
      expect([hash.values]).to contain_exactly(freq_hash.values)
    end
  end
end