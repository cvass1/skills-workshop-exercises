def ten_minute_walk?(walk_array)
  return false if walk_array.length != 10
  x, y = 0, 0
  walk_array.each { |move|
    case move
      when 'w'
        x -= 1
      when 'e'
        x += 1
      when 's'
        y -= 1
      when 'n'
        y += 1
    end
  }
  return x == 0 && y == 0
end

