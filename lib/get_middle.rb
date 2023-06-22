def get_middle(word)
  i = word.length/2
  word.length.odd? ? word[i] : word[i-1..i] 
end