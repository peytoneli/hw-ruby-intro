# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  total = 0
  if array.length() == 0
    return total
  end
  array.each do |x|
    total += x
  end
  return total
end

def max_2_sum(array)
  if array.length() == 0
    return 0
  elsif array.length() == 1
    return array[0]
  end
  e1 = array[0]
  e2 = array[1]
  if array.length() == 2
    return e1 + e2
  end
  for i in 2..array.length()-1
    x = array[i]
    if x > e1
      e1 = x
    elsif x > e2
      e2 = x
    end
  end
  return e1 + e2
end

def sum_to_n?(array, n)
  if array.length() == 0 || array.length() == 1
    return false
  elsif array.length() == 2 && array[0] + array[1] == n
    return true
  else
    for i in 0..array.length()-2
      for j in (i+1)..array.length()-1
        if array[i] + array[j] == n
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  val = s.match(/^([b-d]|[f-h]|[j-n]|[p-t]|[v-z])/i)
  if val == nil
    return false
  end
  return true
end

def binary_multiple_of_4?(s)
  if s == "0"
    return true
  end
  if s.match(/^[01]{3,}$/) != nil
    if s[s.length()-1] == "0" && s[s.length()-2] == "0"
      return true
    end
    return false
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError 
    end
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  def price
    @price
  end
  def price=(new_price)
    @price = new_price
  end
  def price_as_string()
    return "$%0.2f" % @price
  end
end
