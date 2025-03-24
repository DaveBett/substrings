# frozen_string_literal: true

def substrings(string, dictionary)
  # takes a word as the first argument and then an array of valid substrings as the second argument.
  # it returns a hash listing each substring that was found in the original string and how many times it was found.

  result = {}
  # makes it case insesitive
  string_lowercase = string.downcase

  # iterates through each word in the dictionary to find correspondance
  dictionary.each do |word|
    counter = string_lowercase.scan(word.downcase).length
    # if it finds one, it adds it to the counter and stores how many times each word was found in the value of the hash
    result[word] = counter if counter.positive?
  end
  result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings('below', dictionary)
