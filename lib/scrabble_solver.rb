class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    return 0 if @word.nil? || @word.match?(/[^[:alnum:]]/)
    @word.downcase.chars.sum { |letter|
      get_letter_score(letter)
    }
  end

  def get_letter_score(letter)
    case letter
    when 'a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'
      1
    when 'd', 'g'
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