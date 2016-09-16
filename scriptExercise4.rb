#written by James Lindsey
#directions
#Write a method that will convert Pounds to Kilograms.
#HINT! Make sure the method returns the value in kilograms.
#HINT! If you want to test that the program works with some examples, put the specific test cases outside the method that you define, like we did with the pythagorean_theorem program.
#1lb = 0.453592kg
puts "Enter Number of Pounds:"
pounds = gets.to_f

def lbs_to_kg(weight)
  return weight * 0.45359
end

puts  "#{pounds} pounds is equal to #{lbs_to_kg(pounds)} kilograms"
