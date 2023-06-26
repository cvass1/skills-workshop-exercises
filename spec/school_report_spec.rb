require 'school_report'

describe '#report' do
  context 'returns report from input of 1 grade' do
    it 'returns "Green: 1:' do
      result = report("Green")
      expect(result).to eq "Green: 1"
    end

    it 'returns "Amber: 1:' do
      result = report("Amber")
      expect(result).to eq "Amber: 1"
    end

    it 'returns "Red: 1:' do
      result = report("Red")
      expect(result).to eq "Red: 1"
    end
  end

  context 'returns report from input containing more than one of the same grade' do
    it "returns Green: 2" do
      result = report("Green, Green")
      expect(result).to eq "Green: 2"
    end

    it "returns Amber: 2" do
      result = report("Amber, Amber")
      expect(result).to eq "Amber: 2"
    end

    it "returns Red: 3" do
      result = report("Red, Red, Red")
      expect(result).to eq "Red: 3"
    end
  end

  context "it returns report from input of more than one type of grade" do
    it 'returns "Green: 1\nAmber: 1"' do
      result = report("Green, Amber")
      expect(result).to eq "Green: 1\nAmber: 1"
    end
    it 'returns "Green: 1\nAmber: 1\nRed: 1"' do
      result = report("Green, Amber, Red")
      expect(result).to eq "Green: 1\nAmber: 1\nRed: 1"
    end
    it 'returns "Green: 2\nAmber: 1\nRed: 3"' do
      result = report("Green, Green, Amber, Red, Red, Red")
      expect(result).to eq "Green: 2\nAmber: 1\nRed: 3"
    end
    it 'returns "Green: 2\nAmber: 1\nRed: 3" even when missing spaces' do
      result = report("Green, Green,Amber,Red, Red, Red")
      expect(result).to eq "Green: 2\nAmber: 1\nRed: 3"
    end

    it 'returns "Green: 2\nAmber: 1\nRed: 3" even when missing capitalisation' do
      result = report("green, Green, Amber, red, red, Red")
      expect(result).to eq "Green: 2\nAmber: 1\nRed: 3"
    end
  end
end