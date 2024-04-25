def substrings(word, dictionary)
  result = Hash.new(0)
  
  dictionary.each do |dict_word|
    match = word.downcase.scan(dict_word.downcase).count
    result[dict_word] = match unless match == 0
  end
  
  return result
end  


dictionary = ["below", "down", "go" ,"going", "i", "horn","how","howdy","it","low","own","part","partner","sit"]

substrings("below", dictionary)

