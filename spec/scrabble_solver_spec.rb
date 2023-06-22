require 'scrabble_solver'

describe Scrabble do
  context 'no special characters' do
    it 'returns 0 for an empty string' do
      scrabble = Scrabble.new('')
      result = scrabble.score
      expect(result).to eq 0
    end

    it 'returns 1 for the word "a"' do
      scrabble = Scrabble.new('a')
      result = scrabble.score
      expect(result).to eq 1
    end

    it 'returns 4 for the word "f"' do
      scrabble = Scrabble.new('f')
      result = scrabble.score
      expect(result).to eq 4
    end

    it 'returns 6 for the word "street"' do
      scrabble = Scrabble.new('street')
      result = scrabble.score
      expect(result).to eq 6
    end

    it 'returns 22 for the word "quirky"' do
      scrabble = Scrabble.new('quirky')
      result = scrabble.score
      expect(result).to eq 22
    end

    it 'returns 41 for the word "OXYPHENBUTAZONE"' do
      scrabble = Scrabble.new('OXYPHENBUTAZONE')
      result = scrabble.score
      expect(result).to eq 41
    end
  end
  context 'it includes special characters' do
    it 'returns 0 for all special characters' do
      scrabble = Scrabble.new('/?@$')
      result = scrabble.score
      expect(result).to eq 0
    end
    it 'returns 0 for a mix of special characters and letters' do
      scrabble = Scrabble.new(' \t\n')
      result = scrabble.score
      expect(result).to eq 0
    end
  end
  context 'argument is nil' do
    it 'returns zero' do
      scrabble = Scrabble.new(nil)
      result = scrabble.score
      expect(result).to eq 0
    end 
  end
end