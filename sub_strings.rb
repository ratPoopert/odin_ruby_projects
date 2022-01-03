dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  words = string.downcase.scan(/[a-z0-9]+/)
  word_tally = {}
  words.map do |word|
    word_tally[word] = dictionary.count(word)
  end
  word_tally
end

puts substrings("below down go poop", dictionary)
