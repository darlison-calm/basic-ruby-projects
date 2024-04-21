def caesar_cipher1(string, key)
  plain_text = string.split("")
  convert_to_number =  plain_text.map{|item| item.match?(/[a-zA-Z]/) ? item.ord : item}
  apply_cipher = convert_to_number.map do |item|
    if(item.is_a?(Integer) &&  (item >=65 && item <=90) && item + key < 91)
      item + key
    elsif(item.is_a?(Integer)) && (item >=65 && item <=90)&& item + key > 91
      item = (item + key) - 26
    elsif(item.is_a?(Integer) && (item >=97 && item <=122)&& item + key < 123)
      item + key
    elsif(item.is_a?(Integer) && (item >=97 && item <=122) && item + key > 123)
      item = (item + key) - 26
    else
      item  
    end
  end
  convert_to_text = apply_cipher.map{|item| item.is_a?(Integer) ? item.chr : item}
  cipher = convert_to_text.join
  p cipher
end  

UPPER = ("A".."Z").to_a
LOWER = ("a".."z").to_a
def caesar_cipher2(string, key)
 

  string.split("").map {|x| wrap(x, key)}.join("")

end

def wrap(char, n)
  if index = UPPER.index(char)
    UPPER.rotate(n)[index]
  elsif index = LOWER.index(char)
    LOWER.rotate(n)[index]
  else 
    char
  end
end

def caesar_cipher3(string,key)
  upper = ("A".."Z").to_a.join
  lower = ("a".."z").to_a.join

  upper_cipher = upper.split("").rotate(key).join
  lower_cipher = lower.split("").rotate(key).join
  string.tr(upper + lower, upper_cipher + lower_cipher)
end  

caesar_cipher3("What a string!", 5)
