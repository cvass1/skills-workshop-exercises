def spell_check(string)
  raise "input needs to be a string" unless string.is_a? String

  string.split(" ").map { |word|
    word_check(word) ? word : "~#{word}~"
  }.join(" ")
end

def word_check(word)
  word_bank = [
    'hello',
    'hi',
    'it',
    'is',
    'nice',
    'to',
    'meet',
    'you',
    'how',
    'are',
  ]
  word_bank.include?(word.downcase)
end