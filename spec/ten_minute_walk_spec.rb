require 'ten_minute_walk'

describe 'ten_minute_walk?' do
  context 'walk takes 10 minutes' do
    it 'ends up in the correct place' do
      result = ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])
      expect(result).to eq true
    end
    it 'ends up in the wrong place' do
      result = ten_minute_walk?(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])
      expect(result).to eq false
    end
    it 'ends up in the wrong place going just west and north' do
      result = ten_minute_walk?(['w', 'w', 'w', 'w', 'w', 'n', 'n', 'n', 'n', 'n'])
      expect(result).to eq false
    end
  end
  context 'walk is not 10 minutes' do
    it 'ends up in the correct place but is too short' do
      result = ten_minute_walk?(['w', 's', 'n', 'e'])
      expect(result).to eq false
    end
    it 'ends up in the correct place but is too long' do
      result = ten_minute_walk?(['w', 's', 'n', 'e','w', 's', 'n', 'e','w', 's', 'n', 'e'])
      expect(result).to eq false
    end

    it 'ends up in the wrong place and is too short' do
      result = ten_minute_walk?(['w', 's'])
      expect(result).to eq false
    end
    it 'ends up in the wrong place and is too long' do
      result = ten_minute_walk?(['w', 's', 'n', 'e','w', 's', 'n', 'e','w', 's', 'n', 'n'])
      expect(result).to eq false
    end
  end
end