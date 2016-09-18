#this was written by James Lindsey
#this is a work of genius that pairs any number with it's correct suffix
#booya baby!
puts "Enter a number"
num = gets.to_i
digit = num % 10
#converts num to a string
#converts a string to an array
#keeps the last 2 digits in the array
#converts the last to digits into a string
nn = num.to_s[-2..-1].to_i

if digit == 1 && nn != 10 && nn !=11
  puts "That's the #{num}st item"
elsif digit == 2 && nn !=12
  puts "That's the #{num}nd item"
elsif digit == 3 && nn !=13
  puts "That's the #{num}rd item"
elsif digit >= 4
  puts "That's the #{num}th item"
elsif nn >= 10 && nn <=13
  puts "That's the #{num}th item"
elsif digit == 0
  puts "That's the #{num}th item"
end
