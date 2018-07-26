puts "What is your favorite cookie type?"
puts "Choose from the following:
Double Chocolate Chip
Oatmeal Raisin
Peanut Butter
Snickerdoodle
Ginger Snap"
response = gets.downcase.chomp

if response == "double chocolate chip"
  puts "Good choice!"
elsif response =="oatmeal raisin"
  puts "Ew!"
elsif response == "peanut butterr"
  puts "Hope you're not allergic!"
elsif response == "snickerdoodle"
  puts "Yummy!"
elsif response == "ginger snap"
  puts "Smells like the holidays."
else 
  puts "I'm sorry, I don't know that cookie."
end
