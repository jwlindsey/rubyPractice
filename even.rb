#using just if statements
#def is_even?(n)
#  remainder_when_divided_by_2 = n % 2
#
#  if remainder_when_divided_by_2 == 0
#    return true
# end
#
#  if remainder_when_divided_by_2 == 1
#    return false
#  end
#
#end
#using an if else statement
def is_even?(n)
  remainder_when_divided_by_2 = n % 2

  if remainder_when_divided_by_2 == 0
    return true
  else
    return false
  end
end
#one way to say the odd number is
#def is_odd?(n)
#  even = is_even?(n)
#  if even
#    return false
#  else
#    return true
#  end
#end
#another way is to use the "not" or "bang" symbol !
#def is_odd?(n)
#  even = is_even?(n)
#  odd = ! even
#  return odd
#end
#another way to say it even more concise is
#def is_odd?(n)
#  odd = ! is_even?(n)
#  return odd
#end
#another even more concise way is to say
def is_odd?(n)
  return ! is_even?(n)
end
def is_even_and_divisible_by_five?(n)
  divisible_by_five = n % 5
  remainder_when_divided_by_2 = n % 2

  if remainder_when_divided_by_2 == 0 && divisible_by_five == 0
    return true
  else
  return false
  end
end

puts "1 is_even? #{is_even?(1)} - is_odd? #{is_odd?(1)}"
puts "2 is_even? #{is_even?(2)} - is_odd? #{is_odd?(2)}"
puts "3 is_even? #{is_even?(3)} - is_odd? #{is_odd?(3)}"
puts "4 is_even? #{is_even?(4)} - is_odd? #{is_odd?(4)}"
puts "5 is_even? #{is_even?(5)} - is_odd? #{is_odd?(5)}"
puts "6 is_even? #{is_even?(6)} - is_odd? #{is_odd?(6)}"
puts "5 is even and divisible by five? #{is_even_and_divisible_by_five?(5)}"
puts "10 is even and divisible by five? #{is_even_and_divisible_by_five?(10)}"
