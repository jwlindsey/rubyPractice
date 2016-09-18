quotes = []
quotes.push("They're peanut butter and jealous!")
# the << operator is the same exact thing as push it's just shorthand
quotes << ("It's not a man-purse. It's called a satchel. Indiana Jones wears one.")
quotes << ("Rule Number 76.  No excuses!  Play like a Champ!")

#The variable quotes is defined as an array containing three quotes. quotes.each indicates for each of the three quotes, an action should happen.

#The first time the code block is triggered.
#The value of quote will be "They're peanut butter and jealous!"
#Then, the variable upcase_quote will be the upcased version of the string (upcase means every single letter is capitalized), and that will have the value of "THEY'RE PEANUT BUTTER AND JEALOUS!"
#Then, the upcased quote will be output to the screen.
#After the first quote is displayed on the screen, the code block for the first quote is done. You can think of the code starting back at the quotes.each part, which will trigger the code block for the second item.

#The second time the code block is triggered.
#The value of quote will be "It's not a man-purse. It's called a satchel. Indiana Jones wears one."
#Then, the variable upcase_quote will be the upcased version of the string, and that will have the value of "IT'S NOT A MAN-PURSE. IT'S CALLED A SATCHEL. INDIANA JONES WEARS ONE."
#Then, the upcased quote will be output to the screen.
#Again, after the quote is displayed on the screen, the code block for the second quote is done. You can think of the code starting back at the quotes.each part, which will trigger the code block for the third and final item.

#The third time the code block is triggered.
#The value of quote will be "Rule Number 76. No excuses! Play like a Champ!"
#Then, the variable upcase_quote will be the upcased version of the string, and that will have the value of "RULE NUMBER 76. NO EXCUSES! PLAY LIKE A CHAMP!"
#Then, the upcased quote will be output to the screen.
#So ultimately we expect these three quotes to be displayed to the screen in all capital letters.


quotes.each do |quote|
  upcase_quote = quote.upcase
  puts upcase_quote
end

number_of_items = quotes.length
puts "There are #{number_of_items} quotes"

first_item = quotes[0]
second_item = quotes[1]
third_item = quotes[2]

puts "The first item is: #{first_item}"
puts "The second item is: #{second_item}"
puts "The third item is: #{third_item}"
