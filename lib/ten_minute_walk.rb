def ten_minute_walk?(walk_array)
  return false if walk_array.length != 10
  x = walk_array.count('e') - walk_array.count('w')
  y = walk_array.count('n') - walk_array.count('s')
  return x == 0 && y == 0
end

