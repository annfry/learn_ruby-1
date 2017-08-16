def reverser
  new_array = []
  if yield.split.length >1
    new_array = yield.split
    new_array.each do |word|
      word.reverse!
    end
    return new_array.join(" ")
  else
    yield.reverse
  end
end
def adder(arg=1)
  yield.+arg
end
def repeater(arg=1)
  for i in 1..arg
    yield
  end
end
