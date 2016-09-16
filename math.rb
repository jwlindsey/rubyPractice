val1 = 10
val2 = 10.0
val3 = "10"

puts "#{val1.inspect} is the type #{val1.class}"
puts "#{val2.inspect} is the type #{val2.class}"
puts "#{val3.inspect} is the type #{val3.class}"

val4 = 2.5
val5 = val4.to_i
puts val5

val6 = 2
val7 = val6.to_f
puts val7

val8 = 2
val9 = val8.to_s
puts val9.inspect

val = 11.to_f / 2
puts val

str1 = "Hello & " + "Goodbye"
puts str1

str2 = "This is annoying " * 10
puts str2
