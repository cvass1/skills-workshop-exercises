require 'get_middle'

describe 'get_middle' do
  context 'returns the middle letter of a word with odd length' do
    it 'returns "t" in "testing"' do
      result = get_middle('testing')
      expect(result).to eq 't'
    end
    it 'returns "a" in "cat"' do
      result = get_middle('cat')
      expect(result).to eq 'a'
    end
    it 'returns "A" in "A"' do
      result = get_middle('A')
      expect(result).to eq 'A'
    end
  end
  context 'returns the middle 2 letters of a word with even length' do
    it 'returns "es" in "test"' do
      result = get_middle('test')
      expect(result).to eq 'es'
    end
    it 'returns "dd" in "middle"' do
      result = get_middle('middle')
      expect(result).to eq 'dd'
    end

    it 'returns "of" in "of"' do
      result = get_middle('of')
      expect(result).to eq 'of'
    end
  end
end