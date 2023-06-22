require 'leap_years'

describe 'leap_year?' do
  context 'All years divisible by 400 ARE leap years' do
    it 'returns true for year 2000' do
      result = leap_year?(2000)
      expect(result).to eq true
    end

    it 'returns true for year 800' do
      result = leap_year?(800)
      expect(result).to eq true
    end
  end

  context 'All years divisible by 100 but not by 400 are NOT leap years' do
    it 'returns false for 1700' do
      result = leap_year?(1700)
      expect(result).to eq false
    end

    it 'returns false for 1800' do
      result = leap_year?(1800)
      expect(result).to eq false
    end
  end

  context 'All years divisible by 4 and not by 100 ARE leap years' do
    it 'returns true for 2008' do
      result = leap_year?(2008)
      expect(result).to eq true
    end
    it 'returns true for 2004' do
      result = leap_year?(2004)
      expect(result).to eq true
    end
    it 'returns true for 1988' do
      result = leap_year?(1988)
      expect(result).to eq true
    end
  end

  context 'All years not divisible by 4 are NOT leap years ' do
    it 'returns false for 2009' do
      result = leap_year?(2009)
      expect(result).to eq false
    end

    it 'returns false for 2010' do
      result = leap_year?(2010)
      expect(result).to eq false
    end
  end
end

describe 'leap_years' do
  it 'returns only the leap years' do
    start_year, end_year = 1990, 2010
    result = leap_years(start_year, end_year)
    expect(result).to eq [1992, 1996, 2000, 2004, 2008]
  end
  it 'returns an empty array when no leap years' do
    start_year, end_year = 1989, 1991
    result = leap_years(start_year, end_year)
    expect(result).to eq []
  end
end

describe 'closest_leap_year' do
  it 'returns the year if its a leap year' do
    result = closest_leap_year(1992)
    expect(result).to eq 1992
  end
  it 'returns the leap year 1 year after' do
    result = closest_leap_year(1991)
    expect(result).to eq 1992
  end
  it 'returns the leap year 1 year before' do
    result = closest_leap_year(1993)
    expect(result).to eq 1992
  end

  it 'returns the leap year 2 years after' do
    result = closest_leap_year(1990)
    expect(result).to eq 1992
  end
end