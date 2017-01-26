# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  acc = 0
  arr.each {|element| acc+=element}
  return acc
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end
  
  arr = arr.sort
  max = arr[-1]
  sec_max = arr[-2]
  return max+sec_max
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 1
    return false
  end
  for i in 0 .. arr.length-1
    for j in i+1 .. arr.length-1
      sum = arr[i]+arr[j]
      if sum==n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, #{name}"
  return str
end

def starts_with_consonant? s
  # YOUR CODE HERE
  consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  s = s.downcase 
  consonant.each {|ch| return true if s[0]==ch}
  return false
end

def binary_multiple_of_4? s
   # YOUR CODE HERE
  if s.length==1 and s[0]=="0"
    return true
  end
  if s.length<=2
    return false
  end
  
  for i in 0..s.length-1
    if s[i] != "0" && s[i] != "1"
      return false
    end
  end
  
  x = s.to_i(10)
  if x%4==0
    return true
  end
  
  return false
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn.empty? || price<=0
      raise ArgumentError.new("The parameter is wrong!")
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    str = "$"
    str+= "#{'%.2f' % price}"
    return str
  end

end

