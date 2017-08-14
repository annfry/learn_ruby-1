#write your code here
#
def add(num1,num2)
  num1+num2
end
def subtract(num1,num2)
  num1-num2
end
def sum(arr)
  sum = 0.0
  result = 0
  if arr.length > 0 then
    arr.each do |x| 
      sum += x
    end
    result = sum
  end
  return result
end
def multiply(arr)
  product = 1
  result = 0
  if arr.length > 0 then
    arr.each do |x|
      product *= x
    end
    result = product
  end
  return result
end
def power(num1,num2)
  num1**num2
end
def factorial(num)
  if num<=1
    1
  else
    num * factorial(num-1)
  end
end
