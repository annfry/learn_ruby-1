#write your code here

def translate(string)
  if string.split.length > 1
   array_of_words = string.split
   output = []
   array_of_words.each do |x| 
     output.push(translate_word(x)) 
     output.push(" ")
   end
   output.pop
   output.join 
  else
    translate_word(string)
  end
end
def translate_word(string)
  has_punct = false
  postfix_punct = []
  new_word = []
  the_chars = string.chars
  the_chars.each do |character|
    index = 0
    if character.match?(/[!,.?]/)
      has_punct = true
      postfix_punct.push(character)
    else
      new_word.push(character)
    end
    index = index +1
  end
  string = new_word.join
  punctuation = postfix_punct.join
  if string[0].match?(/[ABCDEFGHIJKLMNOPQRSTUVWXYZ]/)
    need_to_cap = true
  else
    need_to_cap = false
  end
  string = string.downcase(:ascii)
  if string.include? "qu"
    if string[0].match?(/[q]/) && string[1].match?(/[u]/)
      string_length = string.length
      string = string.slice(2..string_length) + string.slice(0..1) + "ay"
    else
      minced = string.chars
      prefix = []
      array_to_convert = string.rpartition(/qu/)
      minced.each do |character|
        if character.match?(/[q]/)
          prefix.push(character)
          prefix.push("u")
          string = array_to_convert.pop + prefix.join + "ay"
        else
          prefix.push(character)
        end
      end
    end
  elsif string[0].match?(/[aeiou]/)
    string = string + "ay"
  elsif string[0].match?(/[bcdfghjklmnpqrstvwxyz]/)
    if string[1].match?(/[bcdfghjklmnpqrstvwxyz]/)
      if string[2].match?(/[bcdfghjklmnpqrstvwxyz]/)
        string_length = string.length
        string = string.slice(3..string_length) + string.slice(0..2) + "ay"
      else
        string_length = string.length
        string = string.slice(2..string_length) + string.slice(0..1) + "ay"
      end
    else
    string_length = string.length
    string = string.slice(1..string_length) + string[0] + "ay"
    end
  end
  if need_to_cap && has_punct
    string.capitalize! + punctuation
  elsif need_to_cap && !has_punct
    string.capitalize!
  elsif !need_to_cap && has_punct
    string + punctuation
  else 
    string
  end
end
