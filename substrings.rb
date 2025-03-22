def substrings(string, dictionary)
  #takes a word as the first argument and then an array of valid substrings as the second argument. 
  #it should return a hash listing each substring that was found in the original string and how many times it was found.

  result = {}
  #makes it case insesitive
  string_lowercase = string.downcase

  #iterates through each word in the dictionary to find correspondance
  dictionary.each do |word|
    counter = string_lowercase.scan(word.downcase).length
    #if it finds one, it adds it to the counter and stores how many times each word was found in the value of the hash
    if counter > 0
      result[word] = counter
    end
  end
  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)

