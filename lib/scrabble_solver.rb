class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    return 0 if @word == nil
    return 0 unless @word.index( /[^[:alnum:]]/ ) == nil
    @word.chars.map { |letter|
      get_letter_score(letter.downcase())
    }.sum
  end

  def get_letter_score(letter)
    case letter
    when 'a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'
      1
    when 'd','g'
      2
    when 'b', 'c', 'm', 'p'
      3
    when 'f', 'h', 'v', 'w', 'y'
      4
    when 'k'
      5
    when 'j', 'x'
      8
    when 'q', 'z'
      10
    else 
      0
    end
  end

end