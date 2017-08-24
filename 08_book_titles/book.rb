class Book
  attr_reader :title
  def title=(title)
    if title.split.length >1
      array = title.split
      first_word = array.shift
      first_word.capitalize!
      array.each { |word| 
        case word
          when "i"
            word.capitalize!
          when "the"
          when "a"
          when "an"
          when "and"
          when "in"
          when "of"
          else
              word.capitalize! 
          end}
      @title = first_word + " " +  array.join(" ")
    else
      @title = title.capitalize
    end
  end
end