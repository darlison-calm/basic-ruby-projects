def substrings(word, dictionary)
  result = Hash.new(0)
  
  dictionary.each do |dict_word|
    match = word.downcase.scan(dict_word.downcase).count
    result[dict_word] = match unless match == 0
  end
  
  return result
end  


dictionary = ["below", "down", "go" ,"going", "i", "horn","how","howdy","it","low","own","part","partner","sit"]

# output  { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }



p substrings("below", dictionary)

