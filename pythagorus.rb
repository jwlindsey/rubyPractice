#def pythagorean_theorum(a,b)
#  a_squared = a * a
#  b_squared = b * b
#  a_squared_plus_b_squared = a_squared + b_squared
#  return Math.sqrt(a_squared_plus_b_squared)
#end

#puts pythagorean_theorum(5,12)

#a different method
def square(n)
  return n * n
end

def pythagorean_theorem(a, b)
  a_squared = square(a)
  b_squared = square(b)
  a_squared_plus_b_squared = a_squared + b_squared

  return Math.sqrt(a_squared_plus_b_squared)
end

puts pythagorean_theorem(5, 12)
