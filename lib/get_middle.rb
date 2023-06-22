def get_middle(word)
  i = word.length/2
  word.length.odd? ? word.split('')[i] : word.split('')[i-1] + word.split('')[i] 
end