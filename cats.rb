#this script was written by James Lindsey
#Build a new ruby script to ask a person if they like cats.
#If they enter "yes", display "Ken does too."
#If they enter "no", display "Dogs are better!"
puts "Do you like cats? please type yes or no"
answer = gets.chomp
if answer == "yes"
  puts "Ken does too."
  elsif answer == "no"
  puts "Dogs are better!"
  else answer != "yes" and answer !="no"
  puts "It's hard to decide"
end
