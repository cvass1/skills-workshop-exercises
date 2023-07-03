class Shop
  def checkout(str)

  if str.count(/^[ABCD]/) > 0
    return -1
  end
  
  str.chars.map{ |letter|
    get_letter_value(letter)
  }.sum
  end

  def get_letter_value(letter)
    case letter
    when 'A'
      50
    when 'B'
      30
    when 'C'
      20
    when 'D'
      15
  end
end

end