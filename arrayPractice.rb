fruit = []
fruit << "Apples"
fruit << "Oranges"
fruit << "Strawberries"
fruit << "Mangos"

fruit.each do |n|
  fruit = n
  puts "Om nom nom #{fruit}"
end
