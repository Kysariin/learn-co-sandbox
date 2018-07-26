puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "Where are you from?"
from = gets.chomp

puts "Hello, #{name.capitalize}! You are #{age.downcase} years old, and you are from #{from.capitalize}."