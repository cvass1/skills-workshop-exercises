require 'checkout'

describe Shop do
  context 'calculates single letter strings' do
    it 'returns 50 for "A"' do
      shop = Shop.new()
      result = shop.checkout('A')
      expect(result).to eq 50
    end
    it 'returns 30 for "B"' do
      shop = Shop.new()
      result = shop.checkout('B')
      expect(result).to eq 30
    end
    it 'returns 20 for "C"' do
      shop = Shop.new()
      result = shop.checkout('C')
      expect(result).to eq 20
    end
    it 'returns 15 for "D"' do
      shop = Shop.new()
      result = shop.checkout('D')
      expect(result).to eq 15
    end
  end

  context 'calculates multiple letter strings' do
    it 'returns 100 for "AA"' do
      shop = Shop.new()
      result = shop.checkout('AA')
      expect(result).to eq 100
    end

    it 'returns 115 for "ABCD"' do
      shop = Shop.new()
      result = shop.checkout('ABCD')
      expect(result).to eq 115
    end
  end

  context 'invalid inputs' do
    it 'returns -1 if non-capital letter' do
      shop = Shop.new()
      result = shop.checkout('a')
      expect(result).to eq -1
    end
  end
  
end