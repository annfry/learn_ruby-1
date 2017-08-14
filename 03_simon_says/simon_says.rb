#write your code here
def echo(str)
  str
end
def shout(str)
  str.upcase
end
def repeat(str, numrepeat=2)
  (str+" ")*(numrepeat-1)+str
end
def start_of_word(word,num=1)
  if num > 1
    a = word[0..(num-1)]
  else
    a = word[(num-1)]
  end
  return a
end
def first_word(phrase)
  phrase.split(' ')[0]
end
def titleize(phrase)
  if phrase.include? " "
    array = phrase.split(' ')
    a=""
    array.each_with_index do |x,i| 
      if i == (array.length-1)
        a += x.capitalize
      else
        if i == 0
          a += (x.capitalize + " ")
        else
          if x.length < 5
            a += x + " "
          else
            a += (x.capitalize + " ")
          end
        end
      end
    end
  else
    a = phrase.capitalize
  end
  return a
end
