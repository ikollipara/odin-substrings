##
# substrings.rb
# Ian Kollipara <ikollipara2@huskers.unl.edu>
# 2024.02.02

##
# substrings(string, dictionary)
# --------------------------------
# Return hashmap of dictionary words
# found within string, with the value
# being their frequency

def substrings(string, dictionary)
  lowered_dict = dictionary.map { |word| word.downcase }
  string
    .downcase
    .split
    .reduce(Hash.new(0)) do |result, word|
    result[word] += 1 if lowered_dict.include? word
    result
  end
end
