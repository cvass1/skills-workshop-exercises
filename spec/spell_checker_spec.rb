require 'spell_checker'

describe "#spell_check" do
  context "sentance is one word long" do
    it "returns the word 'hello' if it's spelt correctly" do
      result = spell_check('hello')
      expect(result).to eq 'hello'
    end
    it "returns the word 'hi' if it's spelt correctly" do
      result = spell_check('hi')
      expect(result).to eq 'hi'
    end
    it "returns the word surrounded by ~ if it's spelt incorrectly" do
      result = spell_check('helo')
      expect(result).to eq '~helo~'
    end
  end

  context "sentance is more than one word long and all lower case" do
    it "returns the sentance if all words are spelled correctly" do
      result = spell_check("hello it is nice to meet you")
      expect(result).to eq "hello it is nice to meet you"
    end

    it "returns the sentance with incorrect word surrounded by ~" do
      result = spell_check("hello it is niceg to meet you")
      expect(result).to eq "hello it is ~niceg~ to meet you"
    end
  end

  context "sentance is more than one word and has mixed cases" do
    it "returns the sentance if all words are spelled correctly" do
      result = spell_check("Hello it is nice to meet you")
      expect(result).to eq "Hello it is nice to meet you"
    end

    it "returns the sentance if all words are spelled correctly" do
      result = spell_check("How are you")
      expect(result).to eq "How are you"
    end

    it "returns the sentance with incorrect word surrounded by ~" do
      result = spell_check("Hello it is niceg to meet you")
      expect(result).to eq "Hello it is ~niceg~ to meet you"
    end

    it "returns the sentance with incorrect words surrounded by ~" do
      result = spell_check("Howww aree you")
      expect(result).to eq "~Howww~ ~aree~ you"
    end
  end

  context "input is incorrect" do
    it "returns an error if input is not a string" do
      expect { spell_check(1) }.to raise_error "input needs to be a string"
    end

    it "returns an error if input is an empty array" do
      expect { spell_check([]) }.to raise_error "input needs to be a string"
    end

    it "returns an error if input is an array" do
      expect { spell_check(['hello']) }.to raise_error "input needs to be a string"
    end

    it "returns an error if input is a hash" do
      expect { spell_check({}) }.to raise_error "input needs to be a string"
    end

    it "returns an empty string if input is empty" do
      expect(spell_check("")).to eq ""
    end
  end
end